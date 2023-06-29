//
//  ContentView.swift
//  rspSwiftUI
//
//  Created by Aiden Park on 2023/06/26.
//

import SwiftUI

struct ContentView: View {
    
    let rspRandom: [String] = ["Rock", "Scissors", "Paper"]
    
    @State var randomIndex: Int = 0
    
    @State var rspUser: String = "Pick"
    
    @State var result: String = "Result"
    
    @State var rspComputer: String = "?"
    
    
    var body: some View {
        VStack {
            Spacer()
            //결과
            Text("\(result)")
                .font(.system(size: 60,weight: .bold
                              ,design:.rounded))
                .foregroundColor(.green)
            
            Spacer()
            
            HStack{
                Spacer()
                
                // 컴퓨터
                Text("\(rspComputer)")
                
                Spacer()
                
                // 유저
                Text("\(rspUser)")
                
                Spacer()
            }
            
            Spacer()
            
            HStack{
                
                Button {
                    rspUser = "Rock"
                    rspComputer = "?"
                } label: {
                    Text("Rock")
                        .frame(width: 80, height: 40)
                        .background(.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                
                
                Button {
                    rspUser = "Scissors"
                    rspComputer = "?"
                } label: {
                    Text("Scissors")
                        .frame(width: 80, height: 40)
                        .background(.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
               
               
               
               .padding()
                
                
                Button {
                    rspUser = "Paper"
                    rspComputer = "?"
                } label: {
                    Text("Paper")
                        .frame(width: 80, height: 40)
                        .background(.green)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                }
                
            }
            
            Button {
                rspCheck()
            } label: {
                Text("Start")
                    .foregroundColor(.pink)
                    .font(.system(size: 40, weight: .medium))
            }
            .padding()
            
            
            Spacer()
        }
        .padding()
    }
    
    
     func rspCheck(){
        
        randomIndex = Int.random(in: 0...2)
        rspComputer = rspRandom[randomIndex]
        
         
        guard rspRandom[randomIndex] != rspUser else{
            result = "Draw"
            return
        }
        
        if rspUser == "Rock🪨"{
            if randomIndex == 1{
                result = "Win"
            } else{
                result = "Lose"
            }
        }
        else if rspUser == "Scissors "{
            if randomIndex == 0{
                result = "Lose"
            } else{
                result = "Win"
            }
        }
        else{
            if randomIndex == 0{
                result = "Win"
            } else{
                result = "Lose"
            }
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
