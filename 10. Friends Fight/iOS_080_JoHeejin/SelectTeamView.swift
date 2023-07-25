//
//  SelectTeamView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

struct SelectTeamView: View {
  
  @State var copyFriends = friends
  @State var teamA: Team
  @State var teamB: Team
  
  var body: some View {
    NavigationLink {
      ResultTeamView(teamA: teamA, teamB: teamB)
    } label: {
      Button {
        makeTeam()
      } label: {
        Text("팀 만들기")
      }

    }
  }
  
  func makeTeam(){
    copyFriends.shuffle()
    
    teamA.members.append(copyFriends[0])
    teamA.members.append(copyFriends[2])
    teamA.members.append(copyFriends[4])
    
    teamB.members.append(copyFriends[1])
    teamB.members.append(copyFriends[3])
    teamB.members.append(copyFriends[5])
  }
}

struct SelectTeamView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      SelectTeamView(teamA: Team(winCount: 0, members: []), teamB: Team(winCount: 0, members: []))
    }
  }
}
