//
//  ContentView.swift
//  Dicee-swiftUI
//
//  Created by Richard Middleton on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    func roll() {
        leftDiceNumber = Int.random(in: 1...6)
        rightDiceNumber = Int.random(in: 1...6)
    }
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding()
                
                Spacer()
                Button(action: {
                   roll()
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                })
                .background(Color.red)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

func roll() {
    ContentView().leftDiceNumber = Int.random(in: 1...6)
    ContentView().rightDiceNumber = Int.random(in: 1...6)
}


struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode:.fit)
            .padding()
    }
}
