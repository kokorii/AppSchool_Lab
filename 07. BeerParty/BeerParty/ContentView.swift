//
//  ContentView.swift
//  BeerParty
//
//  Created by 임대진 on 2023/06/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    AsyncImage(url: URL(string: "https://cdn.discordapp.com/attachments/1087563204785352810/1124226942103719937/photo-1473177027534-53d906e9abcf.png")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                }
                Section{
                    ForEach(earth.continents) { continent in
                        NavigationLink {
                            NationsView(continent: continent)
                        } label: {
                            Text(continent.name)
                        }

                        
                    }
                }
            }
            .navigationTitle("세계 맥주 지도")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
