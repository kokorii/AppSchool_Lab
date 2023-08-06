//
//  AddWebView.swift
//  WebView_LAB17
//
//  Created by 장여훈 on 2023/08/03.
//

import SwiftUI

struct AddWebView: View {
    
    var dataStore: DataStore
    @Binding var isShowingSheet: Bool
    @State var name: String = ""
    @State var url: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("사이트 이름")
                TextField("사이트 이름", text: $name)
                
                Text("사이트 URL")
                TextField("사이트 URL", text: $url)
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        isShowingSheet = false
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        dataStore.addData(siteName: name, url: url)
                        isShowingSheet = false
                    }
                }
            }
        }
        .navigationTitle("추가")
    }
}

struct AddWebView_Previews: PreviewProvider {
    static var previews: some View {
        AddWebView(dataStore: DataStore(), isShowingSheet: .constant(true))
    }
}
