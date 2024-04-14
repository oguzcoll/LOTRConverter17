//
//  ExchangeRate.swift
//  LOTRConverter17
//
//  Created by Oguz Colak on 13.04.2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage:ImageResource
    let text:String
    let rightImage:ImageResource
    
    var body: some View {
        HStack{
            // left currecny image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            // Exchange rate text
            Text(text)
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpenny, text: "1 silver piece = 4 silver pennies", rightImage: .goldpenny)
}
