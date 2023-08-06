//
//  Data.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import Foundation

struct Counter: Identifiable, Codable{
  var id: UUID = UUID()
  var number: Int
  var date: Date
  var dateString: String {
      
      let dateFormatter: DateFormatter = DateFormatter()
      dateFormatter.dateFormat = "yyyy-MM-dd EEEE HH:mm:ss"
      
      return dateFormatter.string(from: date)
  }
  
  mutating func addCount() {
    self.number += 1
  }
  
  mutating func resetCount() {
    self.number = 0
  }
}

