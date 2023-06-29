//
//  ViewController.swift
//  rpsGame
//
//  Created by Aiden Park on 2023/06/26.
//

import UIKit

class ViewController: UIViewController {

    // 가위, 바위, 보의 배열
    // enum으로도 만들어보기!
    var randomPick: [String] = ["Rock", "Scissors", "Paper"]
    
    // 배열의 index를 통해 비교하기 위해 만든 index변수
    var randomIndex: Int = 0
    
    var user: String = " "
    
    // 결과를 알려주는 메세지 라벨
    @IBOutlet weak var resultMessage: UILabel!
    
    // 랜덤 픽을 보여주는 라벨
    @IBOutlet weak var randomLabel: UILabel!
    
    // 유저가 선택한 픽을 보여주는 라벨
    @IBOutlet weak var userPick: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultMessage.text = "Press button to start"
    }


    // 주먹 버튼
    @IBAction func rockButton(_ sender: Any) {
        
        
        userPick.text = "Rock"
        user = "Rock"
        
        // 랜덤 픽을 초기화 하기
        randomIndex = Int.random(in: 0...2)
        randomLabel.text = randomPick[randomIndex]
        
        guard randomPick[randomIndex] != user else{
            resultMessage.text = "Draw"
            return
        }
        
        
        // 조건식
        if user == "Rock"{
            if randomIndex == 1 {
                resultMessage.text = "Win"
            } else{
                resultMessage.text = "Lose"
            }
        }
    }
    
    // 가위 버튼
    @IBAction func scissorsButton(_ sender: Any) {
        userPick.text = "Scissors"
        user = "Scissors"
        // 랜덤 픽을 초기화 하기
        randomIndex = Int.random(in: 0...2)
        randomLabel.text = randomPick[randomIndex]
        
        // randomPick의 결과값과 유저값이 같이 않을때가 아니라면 Draw..?
        guard randomPick[randomIndex] != user else{
            resultMessage.text = "Draw"
            return
        }
        
        
        if user == "Scissors"{
            if randomIndex == 0 {
                resultMessage.text = "Lose"
            } else{
                resultMessage.text = "Win"
            }
        }
        
    }
    
    // 보 버튼
    @IBAction func paperButton(_ sender: Any) {
        userPick.text = "Paper"
        user = "Paper"
        
        // 랜덤 픽을 초기화 하기
        randomIndex = Int.random(in: 0...2)
        randomLabel.text = randomPick[randomIndex]
        
        guard randomPick[randomIndex] != user else{
            resultMessage.text = "Draw"
            return
        }
        
        
        if user == "Paper"{
            if randomIndex == 0 {
                resultMessage.text = "Win"
            } else{
                resultMessage.text = "Lose"
            }
        }
        
    }
    
    
}

