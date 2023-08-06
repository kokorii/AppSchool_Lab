//
//  CounterListView.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import SwiftUI

struct CounterListView: View {
  
  @ObservedObject var counterStore: CounterStore
  var body: some View {
    NavigationStack {
      List{
        
        if counterStore.counters.count < 1 {
          Text("저장된 카운터가 없어요!")
        }
        else {
          ForEach(counterStore.counters) { counter in
            VStack(alignment: .leading) {
              Text("\(counter.number)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.purple)
              
              Text("\(counter.dateString)")
                .font(.subheadline)
                .foregroundColor(.gray)
            }
          }
          .onDelete(perform: delete)
          .navigationTitle("Counter History")
        }
        
      }
    }
    .onAppear {
      counterStore.fetchData()
    }
    .refreshable {
      counterStore.fetchData()
    }
  }
  
  func delete(at offset: IndexSet) {
    counterStore.deleteCounter(at: offset)
  }
}

struct CounterListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      CounterListView(counterStore: CounterStore())
        .navigationTitle("Counter History")
    }
    
  }
}
