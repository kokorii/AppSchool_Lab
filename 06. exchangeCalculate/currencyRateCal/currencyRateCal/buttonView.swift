//
//  buttonView.swift
//  currencyRateCal
//
//  Created by Aiden Park on 2023/06/29.
//

import SwiftUI

struct buttonView: View {
    
    var nations: String
    
    var body: some View {
        
        
        
        HStack {
            Button {
                //
            } label: {
                Text("\(nations)")
                    
            }
            .frame(width: 260)
            .padding()
            .font(.system(size: 30, weight: .medium))
            .foregroundColor(.white)
            .background(Color(red: 0.57, green: 0.907, blue: 0.653))
            .cornerRadius(20)
        }
        .padding()
        
        
    }
}

struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        buttonView(nations: "JPY")
    }
}
