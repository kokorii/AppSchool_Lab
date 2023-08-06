//
//  ContentView.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var counterStore : CounterStore = CounterStore()
  
  @State var tabIndex: Int = 0
  
    var body: some View {
      TabView(selection: $tabIndex) {
        
        //Tab1
        NavigationStack {
          CountView(counterStore: counterStore)
        }
        .tabItem {
          Image(systemName: "plus.app")
          Text("Counter")
        }
        .tag(0)
        
        //Tab2
        CounterListView(counterStore: counterStore)
        .tabItem {
          Image(systemName: "list.bullet.circle")
          Text("List")
        }
        .tag(1)
        
        
        //Tab3
        NavigationStack {
          InfoView()
        }
        .tabItem {
          Image(systemName: "info.circle")
          Text("Info")
        }
        .tag(2)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationStack {
        ContentView()
      }
    }
}
