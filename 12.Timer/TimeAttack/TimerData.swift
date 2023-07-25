//
//  TimerData.swift
//  TimeAttack
//
//  Created by kokori on 2023/07/25.
//

import Foundation
//import Combine SwiftUI에는 combine이 내장되어 있어요

class TimerData: ObservableObject {
  
  @Published var timeCount: Int = 0
  var timer: Timer?
  
  init() {
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFired), userInfo: nil, repeats: true)
  }
  
  
  @objc func timerDidFired() {
    timeCount += 1
  }
  
  func resetCount() {
    timeCount = 0
  }
}


