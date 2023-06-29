//
//  File.swift
//  QuizAppUIKit
//
//  Created by kokori on 2023/06/22.
//

import Foundation

struct Question {
  var quiz: String
  
  var menu: [String]
  var answer: String
  
}

var questions: [Question] = [
  Question(quiz: "우리나라의 초대 대통령은?", menu:[ "박정희", "전두환", "김대중","이승만"], answer: "이승만"),
  Question(quiz: "백조의 호수를 작곡한 차이코프스키는 어느 나라 사람일까요?", menu: ["오스트리아", "독일", "미국", "러시아"], answer: "러시아"),
  Question(quiz: "조선시대에 '갑비고차'라고 불리던 지역은 어디일까요?", menu: ["울릉도", "제주도", "안면도", "강화도"],answer: "강화도"),
  Question(quiz: "5천원권 지폐에 있는 과일은?", menu: [ "복숭아", "배", "포도", "수박"],answer: "수박"),
  Question(quiz: "다음 중 동계올림픽 종목이 아닌것은?",menu: ["스키점프", "스켈레톤", "노르딕복합", "트라이애슬론"], answer: "트라이애슬론"),
  Question(quiz: "수영의 영법 중 하나로 나비영법 이라고도 불리는 이 영법의 이름은?", menu: ["평영", "잠영", "배영", "접영"], answer: "접영"),
  Question(quiz: "다음 중 화가 났을 때 사용하는 밈 (Meme)과 관련이 없는 것은?", menu: ["kg받네",  "쫑받네", "킹받드라슈", "군싹"],answer: "군싹"),
  Question(quiz: "다음 중 '저메추'가 가장 필요한 사람은?", menu: ["라면을 끓이기 위해 물을 받고 있는 재희", "교수님께 과제를 제출해야 해서 메일 주소가 필요한 채영", "먹방 유튜버를 보고 있는 유경", "퇴근 후 맛있는 저녁을 먹고자 배달 앱을 서핑하는 희진"],answer: "퇴근 후 맛있는 저녁을 먹고자 배달 앱을 서핑하는 희진"),
  Question(quiz: "경상도 사투리인 '삐갱이'는 무슨 뜻일까요?", menu: ["송아지", "올챙이", "꾀꼬리", "병아리"], answer: "병아리"),
  Question(quiz: "제주도 사투리인 '도르망 옵서'는 무슨 뜻일까요?", menu: ["천천히. 오세요", "둘이서 오세요", "굴러서 오세요", "뛰어서 오세요"], answer: "뛰어서 오세요"),
  Question(quiz: "Z세대 마이크로 트렌드의 시작이라고 불리는 'TTTB'의 뜻은?", menu: ["티빙, 트위터, 틱톡, 블로그", "토스, 틱톡, 텔레그램, 밴드", "티빙, 트위치, 텔레그램, 밴드", "트위터, 트위치, 틱톡, 블로그"],answer: "트위터, 트위치, 틱톡, 블로그"),
  Question(quiz: "다음 중 '캘박'의 뜻 풀이로 옳은 것은?", menu:[ "캘리포니아에서 1박", "캘리그라피 박제", "캘린더 박음질", "캘린더 박제"],answer: "캘린더 박제"),
//  Question(quiz: "'갓생'에서 '갓'이 의미하는 것은?", number1: "갓: 이제 막", number2: "갓: 머리에 쓰는 의관", number3: "GOT: 가졌다, 잡았다",number4: "GOD: 신", answer: "GOD: 신"),
//  Question(quiz: "다음 중 '웃안웃'의 뜻 풀이로 옳은 것은?", number1: "웃긴 줄 알았는데 안 웃겨", number2: "웃어야 하는데 안 웃겨", number3: "웃다가 안 웃다가",number4: "웃긴데 안 웃겨", answer: "웃긴데 안 웃겨"),
//  Question(quiz: "'쿠쿠루oo'의 빈 칸에 들어갈 말은?", number1: "뿡뿡", number2: "뿡뽕", number3: "뿡삥", number4:"삥뽕", answer: "삥뽕"),
//  Question(quiz: "다음 중 '억텐'의 뜻 풀이로 옳은 것은?", number1: "억수로 좋은 텐션", number2: "억쩌라고 텐션", number3: "억한 텐션", number4: "억지 텐션" ,answer: "억지 텐션"),
//  Question(quiz: "다음 중 '쉽살재빙'의 뜻 풀이로 옳은 것은?", number1: "쉽게만 살아가면 재수없게 빙글", number2: "쉽게 살다간 재미있게 빙글", number3: "쉽게 살다간 재미없게 빙구",number4: "쉽게만 살아가면 재미없어 빙고" ,answer: "쉽게만 살아가면 재미없어 빙고"),
//  Question(quiz: "'좋댓ㅇㅇ'의 빈 칸에 들어갈 말은?", number1: "반사", number2: "삼알", number3: "알림", number4: "구알", answer: "구알"),
]
