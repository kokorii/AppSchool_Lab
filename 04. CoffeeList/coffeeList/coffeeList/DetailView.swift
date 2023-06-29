//
//  DetailView.swift
//  coffeeList
//
//  Created by 김종찬 on 2023/06/27.
//

import SwiftUI

struct DetailView: View {
    
    var coffee: [String : String]
    
    var coffeeDetail: String{
        switch coffee["name"] {
        case "Espresso":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123141008469798942/168016_20210415154152122.png"
        case "Americano":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123140498626977802/94_20210430103337006.png"
        case "Cafe Latte":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123140685575495751/110569_20210415143035989.png"
        case "Cafe Mocha":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123140743649828975/46_20210415134438165.png"
        case "Caramel Macchiato":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123140569833672714/126197_20210415154609863.png"
        case "Cappucino":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123141192411009065/110601_20210415143400773.png"
        case "Vanila Latte":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123141084499935242/9200000001941_20210225094346653.png"
        case "Cold Brew":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123140401067458590/9200000000038_20210430113202458.png"
        case "Frappuccino":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123141008469798942/168016_20210415154152122.png"
        case "Affogato":
            return "https://cdn.discordapp.com/attachments/1087563204785352810/1123141335986225172/9200000001631_20210225090916684.png"
        default:
            return "딴거 드세요"
        }
    }
    
    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: URL(string: coffeeDetail), scale: 1.5)
                    .cornerRadius(200)
                    //.frame(maxWidth: 200, maxHeight: 200)
                Spacer()
                Section{
                    
                    Text("\(coffee["desc"] ?? "no")")
                }
                .listRowInsets(EdgeInsets())
                .padding()
                Spacer()
            }
            .navigationTitle(coffee["name"] ?? "no")
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack{
                DetailView(coffee: ["name":"desc"])
            }
        }
    }
}
