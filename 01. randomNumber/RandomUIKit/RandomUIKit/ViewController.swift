//
//  ViewController.swift
//  RandomUIKit
//
//  Created by kokori on 2023/06/19.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var answerLabel: UILabel!
  
  @IBOutlet weak var number1Label: UILabel!
  
  var sliderNumber: [Int] = [0,0,0,0,0]
  var randomNumber = [Int](repeating: Int.random(in: 0...10), count: 5)
  var count: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  @IBAction func valueChanged(_ sender: UISlider) {
    sliderNumber[0] = Int(sender.value)
    number1Label.text = String(sliderNumber[0])
    if sliderNumber[0] == randomNumber[0] {
      count += 1
    }
    
    answerLabel.text = "\(String(count))개 맞췄어요."
  }
  
  @IBAction func resetButtonDidTapped(_ sender: UIButton) {
   sliderNumber = [0,0,0,0,0]
   randomNumber = [Int](repeating: Int.random(in: 0...10), count: 5)
    answerLabel.text = "시~작~!"
    number1Label.text = "0"
    count = 0
    
  }
  
}

