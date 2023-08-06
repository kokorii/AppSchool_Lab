//
//  ContentView.swift
//  ListNavDemo
//
//  Created by kokori on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var carStore : CarStore = CarStore(cars: carData)
  
  @State var isShowingAddSheet: Bool = false
  var body: some View {
    
    NavigationStack {
      
      List {
        
        ForEach(carStore.cars) { car in
          NavigationLink {
            CarDetail(selectedCar: car)
          } label: {
            ListCell(car: car)
          }

        }.onDelete{ indexSet in
          deleteItem(at: indexSet)
        }
        .onMove { indexSet, index in
          moveItem(from: indexSet, to: index)
        }
        .navigationTitle("EV Cars")
          
      }.toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          EditButton()
        }
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            isShowingAddSheet = true
          } label: {
            Text("Add").foregroundColor(.red)
          }
        }
      }.sheet(isPresented: $isShowingAddSheet) {
        AddNewCar(carStore: carStore, isShowingAddSheet: $isShowingAddSheet)
      }

    }
  }
  func deleteItem(at offset: IndexSet) {
    carStore.cars.remove(atOffsets: offset)
    
  }
  
  func moveItem(from source: IndexSet, to destination: Int) {
    carStore.cars.move(fromOffsets: source, toOffset: destination)
  }
}

struct ListCell: View {
  
  var car: Car
  
  var body: some View {
    HStack {
      Image(car.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 100, height: 60)
      
      Text(car.name)
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
