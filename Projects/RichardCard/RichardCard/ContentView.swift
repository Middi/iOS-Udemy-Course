//
//  ContentView.swift
//  RichardCard
//
//  Created by Richard Middleton on 10/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.73, green: 0.86, blue: 0.35)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("Avatar")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color(red: 0, green: 0, blue: 0, opacity: 0.9), lineWidth: 2))
                    
                Text("Richard Middleton")
                    .font(Font.custom("Bodoni Moda", size: 36))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.9))
                Text("iOS Developer")
                Divider()
                InfoView(text: "07864 028745", imageName: "phone.fill")
                InfoView(text: "richard@richardmiddleton.me", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
