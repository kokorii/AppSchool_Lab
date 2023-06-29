//
//  ContentView.swift
//  RandomSwiftUI
//
//  Created by kokori on 2023/06/19.
//

import SwiftUI

struct ContentView: View {
  @State var randomNumber: [Int] = [Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10)]
  @State private var sliderValue: [Double] = [0,0,0,0,0]
  
  var countAnswer: String {
    get {
      var count: Int = 0
      for i in 0..<sliderValue.count {
        if randomNumber[i] == Int(sliderValue[i]) {
               count += 1
        }
      }
      return "\(count) 개 맞췄어요!"
    }
  }
  
  var body: some View {
    VStack {
      
      Text("\(countAnswer)")
      
      Slider(value: $sliderValue[0], in: 0...10, step: 1) {
        Text("Number")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("10")
      }
      
      Slider(value: $sliderValue[1], in: 0...10, step: 1) {
        Text("Number")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("10")
      }
      
      Slider(value: $sliderValue[2], in: 0...10, step: 1) {
        Text("Number")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("10")
      }
      
      Slider(value: $sliderValue[3], in: 0...10, step: 1) {
        Text("Number")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("10")
      }
      
      Slider(value: $sliderValue[4], in: 0...10, step: 1) {
        Text("Number")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("10")
      }
      
      HStack {
        Text("\(Int(sliderValue[0]))").padding()
        Text("\(Int(sliderValue[1]))").padding()
        Text("\(Int(sliderValue[2]))").padding()
        Text("\(Int(sliderValue[3]))").padding()
        Text("\(Int(sliderValue[4]))").padding()
      }
      
      
      Button {
        randomNumber = [Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10)]
        sliderValue = [0,0,0,0,0]
        
      } label: {
        Text("Reset")
      }
      
    }
    .padding()
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
