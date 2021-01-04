//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdatePrice(price: String, total: String)
    
    func didErr(err: Error)
}



struct CoinManager {
    
    // set type of delegate
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    var selectedCurrency = "GBP"
    
    var value = 0.00453605
    
    

    func getCoinPrice(with value: Double) {
    
        let urlString = "\(baseURL)/\(selectedCurrency)?apikey=\(APIKEY)"
        

        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didErr(err: error!)
                    return
                }
                
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSON(safeData) {
                        
                     
                        //Optional: round the price down to 2 decimal places.
                        let priceString = String(format: "%.2f", bitcoinPrice)
                        
                        let total = bitcoinPrice * value
                        
                        let totalString = String(format: "%.2f", total)
                        
                        self.delegate?.didUpdatePrice(price: priceString, total: totalString)
                        
                    }
                }
            }
            task.resume()
        }
    }
    
    
    func parseJSON(_ data: Data) -> Double? {

        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decodedData.rate
            return lastPrice

        } catch {
            self.delegate?.didErr(err: error)
            return nil
        }
    }
    
}
