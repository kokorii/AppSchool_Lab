//
//  CountView.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import SwiftUI

struct CountView: View {
  
  @ObservedObject var counterStore: CounterStore
  @State var number: Int = 0
  @State var showingAlert = false
  
  var body: some View {
    
    
    VStack {
      Button {
        number += 1
      } label: {
        Text("\(number)")
          .font(.system(size: 200, weight:.bold , design: .monospaced))
      }
      .foregroundColor(.purple)
      
      HStack {
        Button {
          showingAlert = true
        } label: {
          Text("저장하기").font(.largeTitle)
        }
        .alert(Text("\(number)를 저장하시겠습니까?"), isPresented: $showingAlert) {
          Button("OK", role: .destructive) {
            let counter: Counter = Counter(number: number, date: Date())
            counterStore.addCounter(counter: counter)
          }
        }
        
        Text("\("|")")
        
        Button {
          number = 0
        } label: {
          Text("초기화").font(.largeTitle)
        }
      }
      
    }
  }
}

struct CountView_Previews: PreviewProvider {
  static var previews: some View {
    CountView(counterStore: CounterStore())
  }
}
