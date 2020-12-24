//
//  WeatherModel.swift
//  Clima
//
//  Created by Richard Middleton on 24/12/2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String((temperature * 10).rounded()/10)
    }
    
    var conditionName: String {
        
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain"
        case 300...399:
            return "cloud.drizzle"
        case 500...504:
            return "cloud.rain"
        case 511:
            return "snow"
        case 520...531:
            return "cloud.drizzle"
        case 600...699:
            return "snow"
        case 700...799:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        case 802:
            return "cloud"
        case 803...804:
            return "cloud"
        default:
            return "cloud"
        }
    }
}

