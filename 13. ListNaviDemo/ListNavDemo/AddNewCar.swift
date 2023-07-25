//
//  AddNewCar.swift
//  ListNavDemo
//
//  Created by kokori on 2023/07/25.
//

import SwiftUI

struct AddNewCar: View {
  @ObservedObject var carStore : CarStore
  
  @State var isHybrid: Bool = false
  @State var name: String = ""
  @State var description: String = ""
  
  @Binding var isShowingAddSheet: Bool
  
    var body: some View {
      Form {
        Section(header: Text("Car Details")) {
          Image(systemName: "car.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
          
          DataInput(title: "Model", userInput: $name)
          DataInput(title: "Descrption", userInput: $description)
          
          Toggle(isOn: $isHybrid){
            Text("Hybrid").font(.headline)
          }.padding()
        }
        
        Button {
          addNewCar()
        } label: {
          Text("Add Car")
        }
      }
    }
  
  func addNewCar() {
    let newCar = Car(id: UUID().uuidString,
                      name: name, description: description, isHybrid: isHybrid, imageName: "tesla_model_3")
    
    carStore.cars.append(newCar)
    isShowingAddSheet = false
  }
}

struct DataInput: View {
  var title: String
  @Binding var userInput: String
  
  var body: some View {
    VStack(alignment: HorizontalAlignment.leading) {
      Text(title)
        .font(.headline)
      
      TextField("Enter \(title)", text: $userInput)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
  }
}

struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
      AddNewCar(carStore: CarStore(cars: carData), isShowingAddSheet: .constant(true))
    }
}
