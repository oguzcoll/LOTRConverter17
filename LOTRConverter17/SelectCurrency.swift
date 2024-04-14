//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Oguz Colak on 13.04.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency:Currency

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
                LazyVGrid(columns:[GridItem(),GridItem(),GridItem()]){
                    ForEach(Currency.allCases){ currency in
                        if self.currency == currency{
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .shadow(color:.black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        } else{
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .onTapGesture {
                                    self.currency = currency
                                }
                        }
                    }
                }
          
                
                // Text
                Text("Select the currency you would like to convert to: ")
                    .fontWeight(.bold)
                
                // Currency ıcon
                
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
    SelectCurrency( currency: .goldPenny)
}
