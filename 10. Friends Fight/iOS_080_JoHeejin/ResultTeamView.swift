//
//  ResultTeamView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

struct ResultTeamView: View {
  
  var teamA: Team
  var teamB: Team
  
  var body: some View {
    VStack {
      HStack {
        //구성된 Team A의 프로필 사진을 보여준다.
        VStack {
          Text("Team A").font(.title)
          ForEach(teamA.members) { friend in
            VStack {
              FriendImageView(friend: friend)
            }
          }
        }.padding()
        
        Text("VS").font(.largeTitle)
        
        //구성된 Team B의 프로필 사진을 보여준다.
        VStack {
          Text("Team B").font(.title)
          ForEach(teamB.members) { friend in
            VStack {
              FriendImageView(friend: friend)
            }
          }
        }.padding()
      }
      
      NavigationLink {
        RoundView(teamA: teamA, teamB: teamB, round: 0)
      } label: {
        Text("GoGo")
        Image(systemName: "arrowshape.right.fill")
      }.navigationBarBackButtonHidden(true)

    }
  }
}

struct ResultTeamView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      ResultTeamView(teamA: Team(winCount: 0, members: [friends[0],friends[1],friends[2],]), teamB:  Team(winCount: 0, members: [friends[3],friends[4],friends[5],]))
    }
  }
}
