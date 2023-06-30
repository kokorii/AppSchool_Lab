//
//  BeerData.swift
//  BeerParty
//
//  Created by 임대진 on 2023/06/30.
//

import Foundation
import SwiftUI


struct Continent: Identifiable {
  var id: UUID = UUID()
  var name: String
  var nations: [Nation]
  
}

struct Nation: Identifiable {
  var id: UUID = UUID()
  var name: String
  var beers: [Beer]
  
}

struct Beer: Identifiable {
  var id: UUID = UUID()
  var name: String
  var alcoholConcentration : String
  var image: String
  var description: String
  
  var inKorea: Bool
  
  var inKoreaImage: Image {
    Image(systemName: inKorea ? "checkmark.circle" : "xmark.circle")
  }
}
struct Earth {
  var continents: [Continent]
}

let earth: Earth = Earth(continents: continents)

let continents: [Continent] = [
  Continent(name: "유럽", nations: nationsOfEurope),
  Continent(name: "아시아", nations: nationsOfAsia),
  Continent(name: "북아메리카", nations: nationsOfNorthAmerica),
  Continent(name: "남아메리카", nations: nationsOfSouthAmerica),
  Continent(name: "아프리카", nations: nationsOfAfrica),
  Continent(name: "오세아니아", nations: nationsOfOceania)
]


let nationsOfEurope: [Nation] = [
  Nation(name: "독일", beers: [
    Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjXoO9jzvNigghB9Wn2Mx3GA_4kIugLVU9ag&usqp=CAU", description: "내가 1등 독일 맥주다", inKorea: true),
    Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
    Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
  ]),
  Nation(name: "벨기에", beers: [
    Beer(name: "호가든", alcoholConcentration: "4.9도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
    Beer(name: "듀벨", alcoholConcentration: "8.5도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
    Beer(name: "크롬바허", alcoholConcentration: "4.8도", image: "apple.com", description: "내가 1등 독일 맥주다", inKorea: true),
  ])
]

let nationsOfAsia: [Nation] = [Nation(name: "한국", beers: [
  Beer(name: "카스", alcoholConcentration: "4.5도", image: "https://i.namu.wiki/i/QUFYgcctJefbnYA6nftAlSnd2gV6hyv2EhQpoXExrkNPrtTey04XI8nVQj8j15itP6xBzT9L8Z6wORvDUzF2e2ZDi2hoPBR7exgv_d3vMUOx5SMTyPPW7NKS8T6y5Q6PKXnZOQWJKPdspkvPPo0puPIgv6odKOJodPF1y_uMkfs.webp", description: "카스(Cass)는 1994년 6월부터 OB 맥주가 제조 및 판매하는 맥주 브랜드이다. ",  inKorea: true),
  Beer(name: "테라", alcoholConcentration: "4.6도", image: "https://i.namu.wiki/i/QUFYgcctJefbnYA6nftAlcm0Bc_dIpXOFPMWP_vAzQj1Kyb4Z5nC2KyOxmQYxrfiXEmnJs22-xs49gelGgeenFd0ct-qwKbYfMTTR4gkJWUSVr9fXeeJqfSsUdAJ23OAR50tOydJMz5nynqu_xOTNf-ngiOLbk1ZhpAeNxYS0CA.webp", description: "하이트진로에서 2019년 3월에 출시한 라거 맥주이다. 청정라거라는 슬로건을 걸고 출시 당시 호주 골든 트라이앵글 맥아를 100% 사용했다는 광고를 펼쳤다. 다만, 주의할 점은 사용된 맥아가 호주산 비율이 100%란 건 말일 뿐 몰트 외의 재료가 안들어갔다는 의미는 아니다. 올몰트 맥주가 아니고 전분이 포함되었다.",  inKorea: true),
  Beer(name: "하이트", alcoholConcentration: "4.8도", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Hite_extra_cold%2C_하이트_엑스트라_콜드.jpg/220px-Hite_extra_cold%2C_하이트_엑스트라_콜드.jpg", description: "하이트",  inKorea: true),
  Beer(name: "필라이트", alcoholConcentration: "4.8도", image: "https://i.namu.wiki/i/QUFYgcctJefbnYA6nftAlQ87rzV2dhtvW3FDf5GwKqEk9BfUXQBdC0rA_5nOw8c0lcOwJTw_m4-SBb3scJFoHvNqUwbmwUiBzlllfdmGVHVtlDyIZw78_JWSycOvYxc0YQCiGdcaRvA0JRTxmSkYY_qxNkncogN1BTFAb2FUlK0.webp", description: "필라이트",  inKorea: true),
  Beer(name: "클라우드", alcoholConcentration: "4.8도", image: "https://i.namu.wiki/i/QUFYgcctJefbnYA6nftAlQX49e6I4IEUSXOEFSqvsI0S6NpTAb9xwPLLsgUqmjFpV_CImux-1NAq3AfqFqWwQk-nVvT7sGq9WEAszv6S-GNJ9rv1ceY9UlrzD1ev4EXxnY-nydycBla8wX0Bb60bNHhIuvrUCVxWVT1BiXM0700.webp", description: "클라우드 설명",  inKorea: true)
])]

let nationsOfNorthAmerica: [Nation] = [Nation(name: "멕시코", beers: [
  Beer(name: "코로나 엑스트라", alcoholConcentration: "4.6도", image: "https://i.namu.wiki/i/BOSSi9oj6j42ZQr3mSadvuEcHKufy0aAvCKlVyE5jPUFjwVN8XoJsHLIpD7FIHRPfyfvQkRWGl1AGXx3gvMwD9oohsMF-S5IFBs7hU5fkWaRFlp9sVX5-vVIlqxJec2JnsyyOiI1RI139XUAdp8ZBg.webp", description: "멕시코의 부가물 첨가 라거. 이름은 왕관을 뜻하는 스페인어 코로나에서 비롯했다. 정식 명칭은 '코로나 엑스트라'이지만 '코로나'라고 더 많이 불린다. 데킬라와 타코에 이어 멕시코에 살지 않는 사람이 멕시코라 하면 떠오르는 유명한 음식 중 하나. 주요 수출품이기도 하다.", inKorea: true),
  Beer(name: "버드와이져", alcoholConcentration: "5.0도", image: "https://i.namu.wiki/i/X3zOfpab_UTEfFnPpZEpIo7icsFddOR7V-93FBkyu5_dU-rOnREB9bpOol-FcW-qSsJLoen7IP1B48p6ePJ0QVJ7s2PIoKaaX-pn6iuEzF0G06857AbavSrJwMDMNrPyWICno86fUSKezX_63ITLmQ.webp", description: "미국을 대표하는 맥주로, 매년 미국에서 판매량 1위를 놓치지 않는 앤하이저부시의 대표적인 상품이다. 체코의 필스너인 부데요비츠키 부드바르와의 상표권 분쟁으로도 알려져 있다..", inKorea: true),
  Beer(name: "무스헤드", alcoholConcentration: "5.0도", image: "https://assets.business.veluga.kr/media/public/Moosehead_Mooseheead_Lager_inDF3ka.png", description: "150년 역사를 자랑하는 캐나다의 대표 라거! 무스헤드 브루어리는 1867년부터 올랜드 가문에 의해 6대째 가업을 이어 맥주를 양조하고 있다. 무스헤드 라거는 독특한 맥주 맛을 내기위해 100% 캐나다산 몰트와 숙성된 효모, 모레인 호수의 청정수를 사용해 오랜시간 공을들여 양조한다.", inKorea: true),
  Beer(name: "모델로", alcoholConcentration: "5.3도", image: "https://postfiles.pstatic.net/20150702_273/sch8787_143580340491533ulo_JPEG/DSC05180.JPG?type=w2", description: "스타우트와 엠버 에일 중간 정도의 어두운 색상이다. 독일의 둥켈레스보다 살짝 밝은 정도. 거품은 잘생성되며 유지력도 나쁘지 않다. 입에 들어가는 순간부터 탄산은 자극적이다.", inKorea: true),
  Beer(name: "밀러", alcoholConcentration: "4.7도", image: "https://i.namu.wiki/i/jT0CGIACDea5BrIlCssH3WsSA_0VQpm611kI7AzgAnqDyxzOBs7HFH2ZSCOOXikiaWm8HCyjAxMtNXqZh4h1X0XKe8Ffb_NlEcKv0nAQaRA6thYuSfKfEQlOrUaLbYnMhlLXlvo7fk0QE1guijwNsw.webp", description: "원료에 옥수수를 첨가한 미국산 맥주. 제조사는 Miller Brewing Company. 과거 필립 모리스 산하였으나, 2002년 필립 모리스가 남아프리카 공화국의 맥주 회사인 SAB에 매각했고, 다시 AB InBev가 SAB 밀러를 인수하는 과정에서 반독점 행정 문제로 캐나다의 몰슨 쿠어스에 매각되었다..", inKorea: true)
])]

let nationsOfSouthAmerica: [Nation] = [Nation(name: "독일", beers: [
  Beer(name: "크리스탈", alcoholConcentration: "4.9도", image: "https://us.123rf.com/450wm/kmiragaya/kmiragaya1401/kmiragaya140100003/24890928-%ED%9D%B0%EC%83%89%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EC%A0%95%ED%86%B5-%EC%BF%A0%EB%B0%94-%EB%A7%A5%EC%A3%BC-%ED%81%AC%EB%A6%AC%EC%8A%A4%ED%83%88.jpg", description: "거품이 풍부하고 톡 쏘는 맛이 적어 부드럽다.", inKorea: false),
  Beer(name: "부카네로", alcoholConcentration: "5.4도", image: "https://t1.daumcdn.net/cfile/tistory/1155550D4B83D63938", description: "17세기 카리브 해에서 스페인 선박 등을 공격,약탈한 해적들을 지칭하는 단어에서 본땄다.", inKorea: false),
  
  // 브라질
  Beer(name: "스콜", alcoholConcentration: "4.7도", image: "https://i1.wp.com/masism.kr/wp-content/uploads/2018/04/06.png?resize=700%2C700", description: "브라질에서 가장 인기있는 맥주. 원래 브라질 맥주가 아닌 영국과 스웨덴, 벨기에, 캐나다의 맥주 양조장이 연합하여 무국적 글로벌 맥주 브랜드를 만들자는 일념하에 4개국의 맥주 양조장 회사들이 공동으로 제조한 맥주 브랜드였었다. 한국도 수입했었다가 중단됨.", inKorea: false),
  
  Beer(name: "브라마", alcoholConcentration: "4.1도", image: "https://i1.wp.com/masism.kr/wp-content/uploads/2018/04/03.png?resize=700%2C700", description: "스콜과 함께 브라질 맥주 시장을 양분하고 있는 맥주이다.", inKorea: false),
  
  // 페루
  Beer(name: "쿠스케냐", alcoholConcentration: "5.0도", image: "https://image.mycelebs.com/beer/new/sq/241376_sq_00.jpg", description: "일반 쿠스케냐를 비롯해 쿠스케냐 몰타와 쿠스케냐 네그로, 쿠스케냐 디 트리고등 다양한 버젼의 맥주 제품들을 생산,판매하고 있다.", inKorea: false)
])]

let nationsOfAfrica: [Nation] = [Nation(name: "탄자니아", beers: [
  Beer(name: "킬리만자로", alcoholConcentration: "??", image: "https://www.monde-selection.com/wp-content/uploads/2021/05/1031793.png", description: """
탄자니아 맥주. 탄자니아 북부에 위치한 아프리카 최고봉 화산 킬리만자로 산의 이름을 따서 지어졌다. 남아공 캐슬과 케냐 터스커, 나미비아 빈트후크, 이집트 스텔라, 사카라 맥주와 더불어 탄자니아 등 아프리카 국가들을 여행갔던 사람들 사이에서 이 맥주를 먹어봤다는 이야기들이 매번 나올 정도로 아프리카에서 가장 유명한 맥주이다. 맥주 상표에 킬리만자로 산과 기린이 그려져 있다.
""", inKorea: false),Beer(name: "세렝게티", alcoholConcentration: "4.5도", image: "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F273DE74F55680D3532", description: """
탄자니아의 유명한 야생동물 국립공원 세렝게티의 이름을 따서 지어진 탄자니아 맥주. 맥주 상표에 표범이 그려져 있다. 세렝게티 프리미엄 라거와 세렝게티 플래티넘 두 종류가 있는데 알콜 도수는 프리미엄 라거는 4.8%, 플래티넘은 4.5%이다.
""", inKorea: false),
  Beer(name: "사파리", alcoholConcentration: "??", image: "", description: """
탄자니아 맥주. 킬리만자로, 세렝게티와 함께 탄자니아 맥주 시장을 대표하는 맥주다. 맥주 상표에 탄자니아의 전통 가옥이 조그마하게 그려져 있다.
""", inKorea: false)]),
 Nation(name: "케냐", beers: [
  Beer(name: "키보 골드", alcoholConcentration: "4.8도", image: "", description: "탄자니아 맥주", inKorea: false),
  Beer(name: "터스커", alcoholConcentration: "??", image: "http://lampcook.com/wi_files/food_story/kfood_story/story17_2_2.jpg", description: """
케냐 맥주. 1922년 영국 식민지이던 케냐에 영국인들이 세운 맥주 양조장에서 처음 만들었던 맥주이다. 현재 케냐 맥주 소비율 대다수를 차지하고 있으며 진한 맛의 라거 맥주이다. 케냐가 영국의 식민 지배에서 독립한 뒤 국유화했다가 현지인에게 민영화로 팔아 이름을 동아프리카 브루어리(East African Brewery)로 이름을 바꾸고 생산하고 있다. 상표가 코끼리인데 공교롭게도 설립자인 조지 허스트는 사냥가서 코끼리에게 엽총을 쏘다가 코끼리에게 공격받아 그 자리에서 사망해버렸다.
""", inKorea: false)]),
                                 Nation(name: "나미비아", beers: [
                                  Beer(name: "빈트후크", alcoholConcentration: "??", image: "https://footizen.files.wordpress.com/2012/05/cfile27-uf-1715a91a4c0ba685016ec6.jpg?w=450&h=600", description: """
나미비아 맥주. 빈트후크는 나미비아의 수도이기도 하다. 독일 식민지 시절 독일인들의 맥주 양조 기술의 영향을 받아 만들어졌으며 그 때문인지 사하라 이남 아프리카 국가의 맥주 브랜드들중 품질과 맛이 가장 좋다는 평가를 받고 있다.
""", inKorea: false),
                                 ])]

let nationsOfOceania: [Nation] = [Nation(name: "독일", beers: [
  Beer(name: "포엑스", alcoholConcentration: "4.8", image: "https://i.namu.wiki/i/upg49F81XffmosWegUkmLmtzQwUF2AA3EJS2AXG1fz2hknJ8rpc6AliGB9TMBVagraUcluiK5xBJJAv2QhtfRJXdqj3sJGhNiQ5l1dCgXE_uJLr2opnHKesXwSZOZXg0pVW8P4OMR6HRfVSczl4KFQ.webp", description: """
    밀러나 카프리와 비슷한 맛으로 맥주의 깊은 맛보다는 가볍게 즐기기 좋은 맥주. 원료에 사탕수수 액이 첨가되어 있어서 끝맛이 미묘하게 달달하다. 빅토리아 비터와 마찬가지로 병따개 없이도 병뚜껑을 돌려서 딸 수 있다
    """, inKorea: true),
  Beer(name: "쿠퍼스", alcoholConcentration: "4.9", image: "https://i.namu.wiki/i/upg49F81XffmosWegUkmLmtzQwUF2AA3EJS2AXG1fz2hknJ8rpc6AliGB9TMBVagraUcluiK5xBJJAv2QhtfRJXdqj3sJGhNiQ5l1dCgXE_uJLr2opnHKesXwSZOZXg0pVW8P4OMR6HRfVSczl4KFQ.webp", description: """
         밝은 황금색. 크림과 같은 거품 헤드가 특징이다. 가벼운 몰트 향, 미약하나마 깨끗한 홉의 피니시가 좋고 청량감이 느껴지는 맥주이다.
         """, inKorea: false),
  Beer(name: "리틀 크리쳐스", alcoholConcentration: "6.4", image: "https://beerlikeit.com/upimg/brd/BRD0002373.jpg", description: """
영국, 호주, 미국, 뉴질랜드의 다양한 홉을 사용해 패션프룻, 자몽의 달콤하고 쌉쌀한 향과 아니스의 스파이시한 아로마, 부드럽게 다듬어진 맛과 길고 쌉쌀한 여운을 즐길 수 있다..
""", inKorea: false),
  Beer(name: "몬티스 라거", alcoholConcentration: "4.5", image: "https://image.mycelebs.com/beer/new/sq/241379_sq_00.jpg", description: """
         프리미엄 뮌헨 몰트를 이용하여 캐슈너트 향이 감도는 부드러운 맛이 특징으로 싱그럽고 상쾌한 맛을 만들어내기에 딱 적당한 양의 홉을 사용하여 어느 요리와도 환상 궁합을 보여준다.
         """, inKorea: true)
])]
