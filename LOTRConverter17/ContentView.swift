//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Oguz Colak on 13.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showExchangeInfo = false
    @State private var leftAmount = ""
    @State private var rightAmount = ""

    
    var body: some View {
        ZStack{
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                // prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // currency excahnege text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // currency conversion section
                HStack{
                    // Left currency section
                    VStack{
                        // currency
                        HStack{
                            // currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom,-5)

                        // Text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    // right currency section
                    VStack{
                        // currency
                        
                        HStack{
                            // currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom,-5)
                        // Text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                
                // info button
                HStack {
                    Spacer()
                    Button{
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                   
                }
            }
        }
        .sheet(isPresented: $showExchangeInfo, content: {
            ExchangeInfo()
        })
//             .border(.blue)
    }
}


#Preview {
    ContentView()
}
