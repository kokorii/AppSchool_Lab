//
//  ContentView.swift
//  TimeAttack
//
//  Created by kokori on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var timerData: TimerData
  
    var body: some View {
      NavigationStack {
        VStack {
          Text("Timer Count : \(timerData.timeCount)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
          
          Button {
            resetCount()
          } label: {
            Text("Reset Counter")
          }
          
          NavigationLink {
            SecondView()
          } label: {
            Text("Next Screen").padding()
          }

        }
      }
    }
  
  func resetCount() {
    timerData.resetCount()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView().environmentObject(TimerData())
    }
}
