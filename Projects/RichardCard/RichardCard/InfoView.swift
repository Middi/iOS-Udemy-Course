//
//  InforView.swift
//  RichardCard
//
//  Created by Richard Middleton on 10/01/2021.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .padding(.horizontal)
            .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.73, green: 0.86, blue: 0.35))
                    Text(text)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                }
            )
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
