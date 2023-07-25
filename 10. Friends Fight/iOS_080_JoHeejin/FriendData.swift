//
//  FriendData.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import Foundation
/* 16개
 라이언, 어피치, 무지, 프로도, 네오, 튜브, 제이지, 콘, 춘식이, 조르디, 스카피, 앙몬드, 팬다주니어, 케로&베로니, 콥, 빠냐
상성: 레벨
 */

struct Team: Identifiable {
  var id:UUID = UUID()
  var winCount: Int
  var members: [Friend]
}

struct Friend: Identifiable {
  var id:UUID = UUID()
  var name: String
  var level: Int
  var image: String
}

let friends: [Friend] = [

  Friend(name: "라이언", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082239_4d31bb9f1570488fa272c6c3f62ead6c.jpg"),
  Friend(name: "어피치", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082315_8c0d582819094cc99ce485efe3270d3b.jpg"),
  Friend(name: "무지", level: Int.random(in: 1...20),image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082419_88b8371fbd3745e58ee8d891e88aa427.jpg"),
  Friend(name: "프로도", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082450_b0b2414e445a45b6a4d8828e1bd31b04.jpg"),
  Friend(name: "네오", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082531_1c821fee6b5740be9d22e313adc838ed.jpg"),
  Friend(name: "튜브", level: Int.random(in: 1...20), image:"https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082549_3ddbfa51aec24c5dafc08da90b3aac9f.jpg"),
  Friend(name: "제이지", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082635_891550ad7ecf4965bc55fd2d73730949.jpg"),
  Friend(name: "콘", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082654_bd7ecaf7fb3441e39bfaaee966e73d38.jpg"),
  Friend(name: "춘식이", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082724_d3b3b84ea89b453fbb842362a171137a.jpg"),
  Friend(name: "죠르디", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082753_621f85cd752c47fea207654892350ba2.jpg"),
  Friend(name: "스카피", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082835_f2b6dc35dc57417a8b3f42be60ecb056.jpg"),
  Friend(name: "앙몬드", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082849_032ba07419ad4aa799a9801428ebd422.jpg"),
  Friend(name: "팬다주니어", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082925_3267b661b3824c16a660fee205b67f3b.jpg"),
  Friend(name: "케로&베로니", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609082944_66764abcc5db4e6b943fdbd89d17d04b.jpg"),
  Friend(name: "콥", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609083013_1f192aa0765f4134963acb603d842fec.jpg"),
  Friend(name: "빠냐", level: Int.random(in: 1...20), image: "https://t1.kakaocdn.net/friends/new_store/prod/character/character_20230609083041_7afc2126545d41f3b7e4394975a961df.jpg"),

]
