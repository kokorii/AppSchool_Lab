//
//  detailView.swift
//  currencyRateCal
//
//  Created by Aiden Park on 2023/06/29.
//

import SwiftUI


struct detailView: View {
  
  @State var inputKRW: String = ""
  
  @State var calResult: Float = 0.0
  
  @State var nationFlag: String = ""
  
  
  var body: some View {
    
    VStack {
      
      //환전 할 금액 입력창
      TextField("환전할 KRW ", text: $inputKRW).padding()
        .font(.largeTitle)
        .keyboardType(.numberPad)
      
      //환율 적용 금액
      Text("\(String(format: "%.2f", calResult))").padding().font(.largeTitle)
    }.onChange(of: inputKRW) { _ in
      calculate()
    }
    
    
  }
  
  func calculate(){
    
    var currencyRate: Float = 1.0
    
    switch nationFlag{
      
    case japanR[0]:
      currencyRate = convertFloat(japanR[1])
      
    case usaR[0]:
      currencyRate = convertFloat(usaR[1])
      
    case chinaR[0]:
      currencyRate = convertFloat(chinaR[1])
      
    case eurR[0]:
      currencyRate = convertFloat(eurR[1])
      
    case ukR[0]:
      currencyRate = convertFloat(ukR[1])
      
    default:
      break
    }
    
    calResult =  convertFloat(inputKRW) / currencyRate
  }
  
  func convertFloat(_ value: String) -> Float {
    Float(value) ?? 0.0
  }
}

struct detailView_Previews: PreviewProvider {
  static var previews: some View {
    detailView(nationFlag: "JPY")
  }
}
