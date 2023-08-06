//
//  ContentView.swift
//  WebView_LAB17
//
//  Created by 장여훈 on 2023/08/03.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataStore = DataStore()
    @ObservedObject var safariStore = DataStore()
    @State var isShowingAddSheet: Bool = false
    @State var tabIndex: Int = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            NavigationStack {
                List(dataStore.datas){ data in
                    NavigationLink {
                        WebView(data: data)
                    } label: {
                        Text("\(data.siteName)")
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingAddSheet = true
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $isShowingAddSheet) {
                    AddWebView(dataStore: dataStore, isShowingSheet: $isShowingAddSheet)
                }
                .navigationTitle("WebView")
                .navigationBarTitleDisplayMode(.inline)
            }
            
            .tabItem {
                Image(systemName: "globe")
                Text("Web")
            }
            .tag(0)
            
            NavigationStack {
                List(safariStore.datas){ data in
                    NavigationLink {
                        SafariView(data: data)
                    } label: {
                        Text("\(data.siteName)")
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingAddSheet = true
                        } label: {
                            Label("Add", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $isShowingAddSheet) {
                    AddWebView(dataStore: safariStore, isShowingSheet: $isShowingAddSheet)
                }
                .navigationTitle("Safari")
                .navigationBarTitleDisplayMode(.inline)
            }
                .tabItem {
                    Text("SafariView")
                }
                .tag(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
                .navigationTitle("WebView")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
