//
//  Car.swift
//  ListNavDemo
//
//  Created by kokori on 2023/07/25.
//

import Foundation

struct Car : Codable, Identifiable {
  var id: String
  var name: String
  
  var description: String
  var isHybrid: Bool
  
  var imageName: String
  
}
