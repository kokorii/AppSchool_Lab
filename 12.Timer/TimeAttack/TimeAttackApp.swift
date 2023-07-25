//
//  TimeAttackApp.swift
//  TimeAttack
//
//  Created by kokori on 2023/07/25.
//

import SwiftUI

@main
struct TimeAttackApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView().environmentObject(TimerData())
        }
    }
}
