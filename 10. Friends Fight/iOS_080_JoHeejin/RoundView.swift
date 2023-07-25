//
//  RoundView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

struct RoundView: View {
  @State var teamA: Team
  @State var teamB: Team
  
  @State var round: Int
  
  @State var roundResultString: String = ""
  
  var body: some View {
    
    VStack {
      
      Text("Round \(round + 1)").font(.largeTitle)
      HStack {
        FriendImageView(friend: teamA.members[round]).frame(width: 200)
        VStack(alignment: .leading, content: {
          Text("이름 : \(teamA.members[round].name)").font(.title)
          Text("레벨 : \(teamA.members[round].level)").font(.title)
          Text("승점 : \(teamA.winCount)").font(.title)
        })
      }
      Text("VS").font(.largeTitle)
      HStack {
        FriendImageView(friend: teamB.members[round]).frame(width: 200)
        VStack(alignment: .leading, content: {
          Text("이름 : \(teamB.members[round].name)").font(.title)
          Text("레벨 : \(teamB.members[round].level)").font(.title)
          
          Text("승점 : \(teamB.winCount)").font(.title)
        })
      }
      
      Text("\(roundResultString)").font(.largeTitle).onAppear{
        if teamA.members[round].level == teamB.members[round].level {
          roundResultString = "Draw!"
        } else if teamA.members[round].level > teamB.members[round].level {
          roundResultString = "Team A Win!"
          teamA.winCount += 1
        } else {
          roundResultString = "Team B Win!"
          teamB.winCount += 1
        }
      }
      
      NavigationLink {
        if round < 2 {
          RoundView(teamA: teamA, teamB: teamB, round: round+1)
        } else {
          GameFinishView(teamA: teamA, teamB: teamB)
        }
      } label: {
        HStack {
          if round < 2 {
            Text("Next Round")
          } else {
            Text("Game Finish!")
          }
          Image(systemName: "arrowshape.right.fill")
        }.padding()
      }.navigationBarBackButtonHidden(true)
    }
  }
  
}

struct RoundView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      RoundView(teamA: Team(winCount: 0, members: [friends[0],friends[1],friends[2],]), teamB:  Team(winCount: 0, members: [friends[3],friends[4],friends[5],]), round: 0)
    }
  }
}
