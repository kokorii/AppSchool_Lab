//
//  SecondView.swift
//  TimeAttack
//
//  Created by kokori on 2023/07/25.
//

import SwiftUI

struct SecondView: View {
  
  @EnvironmentObject var timerData: TimerData
    var body: some View {
      VStack {
        
        Text("Second View")
          .font(.largeTitle)
        
        Text("Timer Count = \(timerData.timeCount)")
          .font(.headline)
          .padding()
        
        Button {
          resetCount()
        } label: {
          Text("Reset Counter")
        }
        
      }.padding()
    }
  
  func resetCount() {
    timerData.resetCount()
  }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
      SecondView().environmentObject(TimerData())
    }
}
