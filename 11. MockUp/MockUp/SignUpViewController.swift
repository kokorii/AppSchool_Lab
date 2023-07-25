//
//  SignUpViewController.swift
//  MockUp
//
//  Created by kokori on 2023/07/20.
//

import UIKit

class SignUpViewController: UIViewController {
  
  //인증번호 입력관련 필드
  let authNumberStackView: UIStackView = UIStackView()
  
  let authNumberTextField: UITextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .systemBackground
      
      buildInterface()
    }
  
  func buildInterface() {
    
    let backButton: UIButton = UIButton()
    
    backButton.setTitle("뒤로가기", for: .normal)
    backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
    
    view.addSubview(backButton)
    
    backButton.translatesAutoresizingMaskIntoConstraints = false
    backButton.addTarget(self, action: #selector(backToLogin), for: .touchUpInside)
    backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    backButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 100).isActive = true
    
    //핸드폰번호 라벨 추가
    let phoneNumberLabel: UILabel = UILabel()
    phoneNumberLabel.text = "휴대전화번호"
    view.addSubview(phoneNumberLabel)
    
    phoneNumberLabel.translatesAutoresizingMaskIntoConstraints = false
    phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    phoneNumberLabel.topAnchor.constraint(equalTo: backButton.topAnchor, constant: 50).isActive = true
    
    //핸드폰 번호 입력 및 인증버튼은 스택으로 구성
    let phoneNumberStackView: UIStackView = UIStackView()
    phoneNumberStackView.axis = .horizontal
    phoneNumberStackView.spacing = 15
    view.addSubview(phoneNumberStackView)
    
    phoneNumberStackView.translatesAutoresizingMaskIntoConstraints = false
    
    phoneNumberStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  30).isActive = true
    phoneNumberStackView.topAnchor.constraint(equalTo: phoneNumberLabel.topAnchor, constant: 35).isActive = true
    
    //핸드폰 번호 입력 필드
    let phoneNumberTextField: UITextField = UITextField()
    
    phoneNumberTextField.borderStyle = .roundedRect
    phoneNumberTextField.placeholder = "핸드폰번호를 입력해주세요"
    phoneNumberTextField.keyboardType = .numberPad
    
    phoneNumberStackView.addArrangedSubview(phoneNumberTextField)
    
    //인증번호 발송 버튼
    let phoneAuthButton: UIButton = UIButton()
    phoneAuthButton.setTitle("인증번호전송", for: .normal)
    phoneAuthButton.setTitleColor(.blue, for: .normal)
    phoneAuthButton.configuration = UIButton.Configuration.bordered()
    phoneAuthButton.addTarget(self, action: #selector(phoneAuth), for: .touchUpInside)
    phoneNumberStackView.addArrangedSubview(phoneAuthButton)
    
    //인증번호 입력 라벨
    let authNumberLabel: UILabel = UILabel()
    authNumberLabel.text = "인증번호"
    
    view.addSubview(authNumberLabel)
    
    authNumberLabel.translatesAutoresizingMaskIntoConstraints = false
    authNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    authNumberLabel.topAnchor.constraint(equalTo: phoneNumberStackView.topAnchor, constant: 60).isActive = true
    
    
    
    //인증번호 입력 및 확인버튼은 스택으로 구성
    authNumberStackView.axis = .horizontal
    authNumberStackView.spacing = 15
    view.addSubview(authNumberStackView)
    
    authNumberStackView.translatesAutoresizingMaskIntoConstraints = false
    
    authNumberStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  30).isActive = true
    authNumberStackView.topAnchor.constraint(equalTo: authNumberLabel.topAnchor, constant: 35).isActive = true
    
    authNumberTextField.borderStyle = .roundedRect
    authNumberTextField.placeholder = "인증번호를 입력해주세요"
    authNumberTextField.keyboardType = .numberPad
    
    authNumberStackView.addArrangedSubview(authNumberTextField)
    
    //인증번호 발송 버튼
    let authNumberCheckButton: UIButton = UIButton()
    authNumberCheckButton.setTitle("확인", for: .normal)
    authNumberCheckButton.setTitleColor(.blue, for: .normal)
    authNumberCheckButton.configuration = UIButton.Configuration.bordered()
    authNumberCheckButton.addTarget(self, action: #selector(authNumberCheck), for: .touchUpInside)
    authNumberStackView.addArrangedSubview(authNumberCheckButton)
    
    //패스워드 라벨 추가
    let emailLabel: UILabel = UILabel()
    emailLabel.text = "이메일"
    
    view.addSubview(emailLabel)
    
    emailLabel.translatesAutoresizingMaskIntoConstraints = false
    emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    emailLabel.topAnchor.constraint(equalTo: authNumberStackView.topAnchor, constant: 60).isActive = true
    
    //이메일 입력 텍스트필드 추가
    let emailTextField: UITextField = UITextField()
    
    emailTextField.borderStyle = .roundedRect
    emailTextField.placeholder = "이메일을 입력해주세요.                               "
    emailTextField.autocapitalizationType = .none
    emailTextField.clearButtonMode = .whileEditing
  
    view.addSubview(emailTextField)
    
    emailTextField.translatesAutoresizingMaskIntoConstraints = false
    emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    emailTextField.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 35).isActive = true
    
    
    //패스워드 라벨 추가
    let pwdLabel: UILabel = UILabel()
    pwdLabel.text = "비밀번호"
    
    view.addSubview(pwdLabel)
    
    pwdLabel.translatesAutoresizingMaskIntoConstraints = false
    pwdLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    pwdLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 60).isActive = true
    
    //패스워드 입력 텍스트필드 추가
    let pwdTextField: UITextField = UITextField()
    
    pwdTextField.borderStyle = .roundedRect
    pwdTextField.placeholder = "비밀번호를 입력해주세요.                            "
    pwdTextField.autocapitalizationType = .none
    pwdTextField.clearButtonMode = .whileEditing
    pwdTextField.isSecureTextEntry = true
    view.addSubview(pwdTextField)
    
    pwdTextField.translatesAutoresizingMaskIntoConstraints = false
    pwdTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
    pwdTextField.topAnchor.constraint(equalTo: pwdLabel.topAnchor, constant: 35).isActive = true
    
    //회원가입 버튼 추가
    let signUpButton: UIButton = UIButton()
    
    signUpButton.setTitle("회원가입 완료", for: .normal)
    signUpButton.setTitleColor(.blue, for: .normal)
    signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
    signUpButton.configuration = UIButton.Configuration.tinted()
    view.addSubview(signUpButton)
    signUpButton.translatesAutoresizingMaskIntoConstraints = false
    signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    signUpButton.topAnchor.constraint(equalTo: pwdTextField.topAnchor, constant: 80).isActive = true
  }
  
  @objc func backToLogin() {
    dismiss(animated: true)
  }
  @objc func authNumberCheck() {
    
    if(authNumberTextField.text == "0721"){
      let invalidAlert = UIAlertController(title: "본인인증 성공", message: "", preferredStyle: UIAlertController.Style.alert)
      
      let confirm = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)    //특별한 동작을 수행하지 않으므로 handler는 nil
      
      invalidAlert.addAction(confirm)
      
      
      
      
    } else {
      let invalidAlert = UIAlertController(title: "본인인증 실패", message: "", preferredStyle: UIAlertController.Style.alert)
      
      let confirm = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)    //특별한 동작을 수행하지 않으므로 handler는 nil
      
      invalidAlert.addAction(confirm)
      
      present(invalidAlert, animated: true, completion: nil)
    
    }
    
  }
  @objc func signUp() {
    
    let invalidAlert = UIAlertController(title: "회원가입완료", message: "정상적으로 가입되었습니다.", preferredStyle: UIAlertController.Style.alert)
    
    let confirm = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)    //특별한 동작을 수행하지 않으므로 handler는 nil
    
    invalidAlert.addAction(confirm)
    
    present(invalidAlert, animated: true, completion: {
      //화면 전환 필요
      (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.isLogin = true
      // self.present(FirstViewController(), animated: true)
      (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(FirstViewController())
    })
    
  }
  @objc func phoneAuth() {

    let invalidAlert = UIAlertController(title: "인증번호전송", message: "인증번호가 발송되었습니다.\n 테스트 인증번호: 0721", preferredStyle: UIAlertController.Style.alert)
    
    let confirm = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)    //특별한 동작을 수행하지 않으므로 handler는 nil
    
    invalidAlert.addAction(confirm)
    
    present(invalidAlert, animated: true, completion: nil)
  }
}
