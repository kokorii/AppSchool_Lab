//
//  NationsView.swift
//  BeerParty
//
//  Created by 임대진 on 2023/06/30.
//

import SwiftUI

struct NationsView: View {
    var continent: Continent
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(continent.nations) { nation in
                    NavigationLink {
                        BeerView(nation: nation)
                    } label: {
                        Text(nation.name)
                    }
                    
                }
            }
        }
        .navigationTitle(continent.name)
        
    }
}

struct NationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NationsView(continent: Continent(name: "유럽", nations: nationsOfEurope))
        }
    }
}
