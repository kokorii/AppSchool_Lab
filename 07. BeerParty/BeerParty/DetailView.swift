//
//  DetailView.swift
//  BeerParty
//
//  Created by 임대진 on 2023/06/30.
//

import SwiftUI

struct DetailView: View {
    var beer: Beer
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    AsyncImage(url: URL(string: beer.image)) { image in
                      image.resizable().frame(width:200, height:200)
                            
                    } placeholder: {
                        ProgressView()
                    }
                    
                    
                    Text(beer.name)
                    Text(beer.alcoholConcentration)
                    Text(beer.description)
                    
                    Text("수입 여부: \(beer.inKoreaImage)")
                    
                }
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack{
//            DetailView(beer: Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjXoO9jzvNigghB9Wn2Mx3GA_4kIugLVU9ag&usqp=CAU", description: "내가 1등 독일 맥주다", inKorea: true))
//        }
//    }
//}
