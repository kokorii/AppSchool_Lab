//
//  CarStore.swift
//  ListNavDemo
//
//  Created by kokori on 2023/07/25.
//

import Foundation

class CarStore : ObservableObject{
  
  @Published var cars: [Car]
  
  init(cars: [Car] = []) {
    self.cars = cars
  }
}
