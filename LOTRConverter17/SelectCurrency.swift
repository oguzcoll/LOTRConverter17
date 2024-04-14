//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Oguz Colak on 13.04.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency


    var body: some View {
        ZStack{
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // Text
                Text("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                //Currency Icons
                IconGrid(currency: $topCurrency)
         
                
                // Text
                Text("Select the currency you would like to convert to: ")
                    .fontWeight(.bold)
                
                // Currency ıcon
                IconGrid(currency: $bottomCurrency)
                
                // done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
