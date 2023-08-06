//
//  DataStore.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import Foundation

class CounterStore: ObservableObject {
  @Published var counters: [Counter] = []
  
  init() {
     counters = [
      
      Counter(number: 30, date: Date()),
      Counter(number: 50, date: Date())

    ]
  }
  
  private func loadData() {
      // UserDefaults로부터 읽어오기
      if let encoded = UserDefaults.standard.data(forKey: "counters") {
          
          let decoder: JSONDecoder = JSONDecoder()
          
          if let decoded = try? decoder.decode([Counter].self, from: encoded) {
            counters = decoded
          }
      }
  }
  
  private func saveData() {
      // UserDefaults에 저장하기
      let encoder: JSONEncoder = JSONEncoder()
      
      if let encoded = try? encoder.encode(counters) {
          UserDefaults.standard.set(encoded, forKey: "counters")
      }
  }
  
  func fetchData() {
    loadData()
  }
  
  func addCounter(counter: Counter) {
  
    counters.insert(counter, at: 0)
    saveData()
    
  }
  
  func deleteCounter(at offsets: IndexSet) {
    
    counters.remove(atOffsets:  offsets)
    saveData()
  }
  
  
}
