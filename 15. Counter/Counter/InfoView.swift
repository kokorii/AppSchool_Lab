//
//  InfoView.swift
//  Counter
//
//  Created by kokori on 2023/08/06.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
      VStack{
        Text("\("kokorii")")
          .font(.largeTitle)
          .bold()
        
        Text("iOS Developer")
          .font(.headline)
          .foregroundColor(.gray)
        
        HStack {
          Link("Github", destination: URL(string: "https://github.com/kokorii")!)
            .font(.subheadline)
          
          Text("\("|")")
          
          Link("Blog", destination: URL(string: "https://day-by-day.tistory.com/")!)
            .font(.subheadline)
          
        }
        
        Image("mypick")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipShape(Circle())
          .frame(width: 200, height: 200)
          .overlay {
            Circle().stroke(.white, lineWidth: 4)
          }.shadow(radius: 2)
        
        Text("\("화면을 터치하면 숫자가 올라가는 카운트 앱입니다.")")
      }
    }
  
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
