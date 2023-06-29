//
//  ViewController.swift
//  QuizAppUIKit
//
//  Created by kokori on 2023/06/22.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var mainTitleLabel: UILabel!
  
  @IBOutlet weak var startButton: UIButton!
  
  @IBOutlet weak var candidate1: UIButton!
  @IBOutlet weak var candidate2: UIButton!
  @IBOutlet weak var candidate3: UIButton!
  @IBOutlet weak var candidate4: UIButton!
  
  @IBOutlet weak var candidate1Button: UIButton!
  @IBOutlet weak var candidate2Button: UIButton!
  @IBOutlet weak var candidate3Button: UIButton!
  @IBOutlet weak var candidate4Button: UIButton!
  
  var candidates: [String] = []
  var questionIndex: Int = -1
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    candidate1.isHidden = true
    candidate2.isHidden = true
    candidate3.isHidden = true
    candidate4.isHidden = true
    
  }
  
  @IBAction func startButtonDidTapped(_ sender: UIButton) {
    startButton.setTitle("다음으로", for: .normal)
    //mainTitleLabel.text = questions[0].quiz
    candidate1.isHidden = false
    candidate2.isHidden = false
    candidate3.isHidden = false
    candidate4.isHidden = false
    next()
  }
  
  func next() {
    
    questionIndex += 1
    candidates = ["","","",""]
    
    if questionIndex == -1 {
      mainTitleLabel.text = "지금부터 게임을 시작하겠습니다."
      startButton.setTitle("시작하기", for: .normal)
      candidates=["","","",""]
      candidate1.isHidden = true
      candidate2.isHidden = true
      candidate3.isHidden = true
      candidate4.isHidden = true
      
    } else if questionIndex >= questions.count {
      mainTitleLabel.text = "모든 문제를 해결하셨습니다!"
      questionIndex = -2
      candidates=["","","",""]
      candidate1.isHidden = true
      candidate2.isHidden = true
      candidate3.isHidden = true
      candidate4.isHidden = true
      startButton.setTitle("처음으로", for: .normal)
    } else {
      mainTitleLabel.text = questions[questionIndex].quiz
      candidates[0] = questions[questionIndex].menu[0]
      candidates[1] = questions[questionIndex].menu[1]
      candidates[2] = questions[questionIndex].menu[2]
      candidates[3] = questions[questionIndex].menu[3]
      candidates.shuffle()
      candidate1.setTitle(candidates[0], for: .normal)
      candidate2.setTitle(candidates[1], for: .normal)
      candidate3.setTitle(candidates[2], for: .normal)
      candidate4.setTitle(candidates[3], for: .normal)
    }
    
    
  }
  
  @IBAction func candidate1ButtonDidTapped(_ sender: UIButton) {
    if candidate1.titleLabel?.text == questions[questionIndex].answer {
      next()
    } else {
      let alert = UIAlertController(title: "틀렸습니다", message: "다시 생각해주세요!", preferredStyle: .alert)
      let OK = UIAlertAction(title: "OK", style: .default)
      alert.addAction(OK)
      present(alert, animated: true, completion: nil)
    }
 
  }
  
  @IBAction func candidate2ButtonDidTapped(_ sender: UIButton) {
    if candidate2.titleLabel?.text == questions[questionIndex].answer {
      next()
    } else {
      let alert = UIAlertController(title: "틀렸습니다", message: "다시 생각해주세요!", preferredStyle: .alert)
      let OK = UIAlertAction(title: "OK", style: .default)
      alert.addAction(OK)
      present(alert, animated: true, completion: nil)
    }
  }
  
  @IBAction func candidate3ButtonDidTapped(_ sender: UIButton) {
    if candidate3.titleLabel?.text == questions[questionIndex].answer {
      next()
    } else {
      let alert = UIAlertController(title: "틀렸습니다", message: "다시 생각해주세요!", preferredStyle: .alert)
      let OK = UIAlertAction(title: "OK", style: .default)
      alert.addAction(OK)
      present(alert, animated: true, completion: nil)
    }
  }
  
  @IBAction func candidate4ButtonDidTapped(_ sender: UIButton) {
    if candidate4.titleLabel?.text == questions[questionIndex].answer {
      next()
    } else {
      let alert = UIAlertController(title: "틀렸습니다", message: "다시 생각해주세요!", preferredStyle: .alert)
      let OK = UIAlertAction(title: "OK", style: .default)
      alert.addAction(OK)
      present(alert, animated: true, completion: nil)
    }
  }
  
}

