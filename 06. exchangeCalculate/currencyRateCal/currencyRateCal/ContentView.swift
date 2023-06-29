//
//  ContentView.swift
//  currencyRateCal
//
//  Created by Aiden Park on 2023/06/29.
//


// 환율 계산기
// JPY, USD, POUND, EUR, CNY

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        //swiftUI 다른 View 이동 -> Navigation
        NavigationStack{
            VStack {
                NavigationLink {
                  detailView(nationFlag: japanR[0])
                } label: {
                    buttonView(nations: "JPY")
                }
                
                NavigationLink {
                    detailView(nationFlag: usaR[0])
                } label: {
                    buttonView(nations: "USD")
                }
                
                NavigationLink {
                    detailView(nationFlag: chinaR[0])
                } label: {
                    buttonView(nations: "CNY")
                }
                
                NavigationLink {
                    detailView(nationFlag: eurR[0])
                } label: {
                    buttonView(nations: "EUR")
                }
                
                NavigationLink {
                    detailView(nationFlag: ukR[0])
                } label: {
                    buttonView(nations: "POUND")
                }

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
