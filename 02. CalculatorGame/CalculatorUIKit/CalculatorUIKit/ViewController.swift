//
//  ViewController.swift
//  CalculatorUIKit
//
//  Created by kokori on 2023/06/20.
//

import UIKit

enum Operator: String, CaseIterable {
  case plus = "+"
  case minus = "-"
  case divide = "/"
  case multiple = "*"
}

class ViewController: UIViewController {
  
  @IBOutlet weak var NOButton: UIButton!
  @IBOutlet weak var OKButton: UIButton!
  @IBOutlet weak var equationLabel: UILabel!
  
  @IBOutlet weak var countOfCorrectLabel: UILabel!
  
  @IBOutlet weak var countOfWrongLabel: UILabel!
  
  @IBOutlet weak var quizCountLabel: UILabel!
  
  var _quizCount: Int = 1
  var quizCount: Int {
    get {
      return _quizCount
    }
    set {
      if quizCount == 10 {
        _quizCount = 1
      } else {
        _quizCount = newValue
      }
    }
  }
  var leftOperand: Int = 0
  var rightOperand: Int = 0
  var gameOperator: Operator = .multiple
  var equation: String {
    get {
      return "\(leftOperand) \(gameOperator.rawValue) \(rightOperand) = \(randomAnswerOfEquation)"
    }
  }
  var randomAnswerOfEquation: Int = 0
  
  var realAnswerOfEquation: Int = 0
  
  var countOfCorrect: Int = 0
  var countOfWrong: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    initEquation()
    
    
  }
  
  @IBAction func selectCorrectButton(_ sender: UIButton) {
    
    
    if randomAnswerOfEquation == realAnswerOfEquation {
      countOfCorrect += 1
      countOfCorrectLabel.text = "정답:\(countOfCorrect)"
    } else {
      countOfWrong += 1
      countOfWrongLabel.text = "땡:\(countOfWrong)"
    }
    
    quizCount += 1
    quizCountLabel.text = "\(quizCount)/10"
    
    if quizCount == 10 {
      if randomAnswerOfEquation == realAnswerOfEquation {
        countOfCorrect += 1
        countOfCorrectLabel.text = "정답:\(countOfCorrect)"
      } else {
        countOfWrong += 1
        countOfWrongLabel.text = "땡:\(countOfWrong)"
      }
      
      OKButton.isEnabled = false
      NOButton.isEnabled = false
      return
    }
    initEquation()
  }
  
  @IBAction func selectWrongButton(_ sender: UIButton) {
    
    if randomAnswerOfEquation != realAnswerOfEquation {
      countOfCorrect += 1
      countOfCorrectLabel.text = "정답:\(countOfCorrect)"
    } else {
      countOfWrong += 1
      countOfWrongLabel.text = "땡:\(countOfWrong)"
    }
    
    quizCount += 1
    quizCountLabel.text = "\(quizCount)/10"

    if quizCount == 10 {
      
      if randomAnswerOfEquation != realAnswerOfEquation {
        countOfCorrect += 1
        countOfCorrectLabel.text = "정답:\(countOfCorrect)"
      } else {
        countOfWrong += 1
        countOfWrongLabel.text = "땡:\(countOfWrong)"
      }
      OKButton.isEnabled = false
      NOButton.isEnabled = false
      return
    }
    
    initEquation()
  }
  
  @IBAction func resetCountOfUserAnswer(_ sender: UIButton) {
    
    countOfCorrect = 0
    countOfCorrectLabel.text = "정답:\(countOfCorrect)"
    
    countOfWrong = 0
    countOfWrongLabel.text = "땡:\(countOfWrong)"
    
    quizCount = 1
    quizCountLabel.text = "\(quizCount)/10"
    initEquation()
  }
  
  func initEquation() {
    
    leftOperand = Int.random(in: 1...9)
    rightOperand = Int.random(in: 1...9)
    
    gameOperator = Operator.allCases.randomElement() ?? .multiple
    
    switch gameOperator {
    case .minus:
      realAnswerOfEquation = leftOperand - rightOperand
    case .plus:
      realAnswerOfEquation = leftOperand + rightOperand
    case .divide:
      realAnswerOfEquation = leftOperand / rightOperand
    case .multiple:
      realAnswerOfEquation = leftOperand * rightOperand
    default:
      print("원하는게 뭐죠?")
    }
    
    randomAnswerOfEquation = Int.random(in: realAnswerOfEquation...realAnswerOfEquation+5)
    
    OKButton.isEnabled = true
    NOButton.isEnabled = true
    
    
    equationLabel.text = equation
  }
  
}

