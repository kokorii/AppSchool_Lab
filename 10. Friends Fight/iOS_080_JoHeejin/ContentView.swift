//
//  ContentView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

/*
 이 앱은 16마리의 카카오 프렌즈에 각각 레벨을 랜덤하게 할당하여 게임을 진행한다.
 
 1. 팀 A, B를 구성하며 각 구성원은 3명씩이다.
 2. 3라운드 A,B팀 각 순서대로 총 3라운드를 진행한다.
 3. 3판 중 2판을 이긴 팀이 최종 승리팀이 된다.
 */
struct ContentView: View {
  
  //구현을 위해 우선 팀 구성을 넣어준다.
  //추후 랜덤하게 구성되도록 수정 예정
  
  @State var copyFriends = friends
  @State var teamA: Team = Team(winCount: 0, members: [])
  @State var teamB: Team = Team(winCount: 0, members: [])
  
  var body: some View {
    NavigationStack {
      VStack {
        NavigationLink(destination: {
          // 구성된 팀 정보를 다음 화면으로 넘겨준다.
          //SelectTeamView(teamA: teamA, teamB: teamB)
          ResultTeamView(teamA: teamA, teamB:teamB)
        }, label: {
          Text("Game Start")
            .frame(width: 250)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.blue))
            .foregroundColor(.blue)
            .font(.largeTitle).onAppear {
              makeTeam()
            }
        })
        .padding()
      }.background(Image("backimage"))
    }
  }
  
  
  func makeTeam() -> Void{
    copyFriends.shuffle()
    
    teamA.members.append(copyFriends[0])
    teamA.members.append(copyFriends[2])
    teamA.members.append(copyFriends[4])
    
    teamB.members.append(copyFriends[1])
    teamB.members.append(copyFriends[3])
    teamB.members.append(copyFriends[5])
    
    print("\(teamA)")
    print("\(teamB)")
  }
   
  
}
  
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationStack {
        ContentView()
      }
    }
  }
