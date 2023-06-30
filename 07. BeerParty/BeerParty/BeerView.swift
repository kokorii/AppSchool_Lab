//
//  NationsView.swift
//  BeerParty
//
//  Created by 임대진 on 2023/06/30.
//

import SwiftUI

struct BeerView: View {
    
    var nation: Nation
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(nation.beers) { beer in
                    NavigationLink {
                        DetailView(beer: beer)
                    } label: {
                        Text(beer.name)
                    }

                    
                }
            }
        }
        .navigationTitle(nation.name)
        
    }
}

struct BeerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{

            BeerView(nation: Nation(name: "독일", beers: [
                Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다",  inKorea: true),
                Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
                Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
            ])
            )

        }

    }
}
