//
//  GameFinishView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

struct GameFinishView: View {
  @State var teamA: Team
  @State var teamB: Team
  
  var gameResult: String {
    
    if teamA.winCount > teamB.winCount {
      print("\(teamA.winCount) \(teamB.winCount)")
      return "Team A Win!"
    } else if teamA.winCount < teamB.winCount {
      print("\(teamA.winCount) \(teamB.winCount)")
      return "Team B Win!"
    } else {
      print("\(teamA.winCount) \(teamB.winCount)")
      return "DRAW!"
    }
    
  }
  var body: some View {
    VStack {
      Text("최종 결과!").font(.largeTitle)
      HStack {
        //구성된 Team A의 프로필 사진을 보여준다.
        VStack {
          ForEach(teamA.members) { friend in
            VStack {
              FriendImageView(friend: friend)
              Text("level: \(friend.level)")
            }
          }
        }.padding()
        
        Text("VS").font(.largeTitle)
        
        //구성된 Team B의 프로필 사진을 보여준다.
        VStack {
          ForEach(teamB.members) { friend in
            VStack {
              FriendImageView(friend: friend)
              Text("Level: \(friend.level)")
            }
          }
        }.padding()
      }
      
      Text("\(gameResult)").font(.largeTitle)
    }.navigationBarBackButtonHidden(true)
  }
}

struct GameFinishView_Previews: PreviewProvider {
  static var previews: some View {
    GameFinishView(teamA: Team(winCount: 1, members: [friends[0],friends[1],friends[2],]), teamB:  Team(winCount: 0, members: [friends[3],friends[4],friends[5],]))
  }
}
