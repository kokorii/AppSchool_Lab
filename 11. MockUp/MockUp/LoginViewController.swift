//
//  LoginViewController.swift
//  MockUp
//
//  Created by kokori on 2023/07/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    // 이메일, 비밀번호 입력 칸 안내 및 입력 객체
    let emailLabel: UILabel = UILabel()
    let emailTextField: UITextField = UITextField()
    
    let pwdLabel: UILabel = UILabel()
    let pwdTextField: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        buildInterface()
    }
  
    func buildInterface() {
        
        //이메일 라벨 추가
        emailLabel.text = "이메일"
        
        view.addSubview(emailLabel)
        
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        //이메일 입력 텍스트필드 추가
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholder = "가입하신 이메일 주소를 입력해주세요."
        emailTextField.autocapitalizationType = .none
        emailTextField.clearButtonMode = .whileEditing
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailLabel.topAnchor, constant: 35).isActive = true
        
        //패스워드 라벨 추가
        pwdLabel.text = "비밀번호"
        
        view.addSubview(pwdLabel)
        
        pwdLabel.translatesAutoresizingMaskIntoConstraints = false
        pwdLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        pwdLabel.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 60).isActive = true
        
        //패스워드 입력 텍스트필드 추가
        pwdTextField.borderStyle = .roundedRect
        pwdTextField.placeholder = "비밀번호를 입력해주세요."
        pwdTextField.autocapitalizationType = .none
        pwdTextField.clearButtonMode = .whileEditing
        pwdTextField.isSecureTextEntry = true
        view.addSubview(pwdTextField)
        
        pwdTextField.translatesAutoresizingMaskIntoConstraints = false
        pwdTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        pwdTextField.topAnchor.constraint(equalTo: pwdLabel.topAnchor, constant: 35).isActive = true
        
        //로그인 버튼 추가
        let loginButton: UIButton = UIButton()
        
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(.blue, for: .normal)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginButton.configuration = UIButton.Configuration.tinted()
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: pwdTextField.topAnchor, constant: 80).isActive = true
        
        //여길 스택으로 할 껄 ..
        //카카오 로그인 이미지 추가
        let kakaoLoginImageView: UIImageView = UIImageView()
        kakaoLoginImageView.image = UIImage(named: "kakao_login_img")
        
        view.addSubview(kakaoLoginImageView)
        
        kakaoLoginImageView.translatesAutoresizingMaskIntoConstraints = false
        kakaoLoginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        kakaoLoginImageView.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 100).isActive = true
        
        //이미지 터치 시 수행할 기능 연결
        let tapKakaoLoginViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(kakaoLoginTapped(tapGestureRecognizer: )))
        
        kakaoLoginImageView.isUserInteractionEnabled = true
        kakaoLoginImageView.addGestureRecognizer(tapKakaoLoginViewRecognizer)
        
        //네이버 로그인 이미지 추가
        let naverLoginImageView: UIImageView = UIImageView()
        naverLoginImageView.image = UIImage(named: "naver_login_img")
        
        view.addSubview(naverLoginImageView)
        
        naverLoginImageView.translatesAutoresizingMaskIntoConstraints = false
        naverLoginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        naverLoginImageView.topAnchor.constraint(equalTo: kakaoLoginImageView.topAnchor, constant: 65).isActive = true
        
        //이미지 터치 시 수행할 기능 연결
        let tapNaverLoginViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(naverLoginTapped(tapGestureRecognizer: )))
        
        naverLoginImageView.isUserInteractionEnabled = true
        naverLoginImageView.addGestureRecognizer(tapNaverLoginViewRecognizer)
        
        //구글 로그인 이미지 추가
        let googleLoginImageView: UIImageView = UIImageView()
        googleLoginImageView.image = UIImage(named: "google_login_img")
        
        view.addSubview(googleLoginImageView)
        
        googleLoginImageView.translatesAutoresizingMaskIntoConstraints = false
        googleLoginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleLoginImageView.topAnchor.constraint(equalTo: naverLoginImageView.topAnchor, constant: 65).isActive = true
        
        //이미지 터치 시 수행할 기능 연결
        let tapGoogleLoginViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(googleLoginTapped(tapGestureRecognizer: )))
        
        googleLoginImageView.isUserInteractionEnabled = true
        googleLoginImageView.addGestureRecognizer(tapGoogleLoginViewRecognizer)
        
        
        //아이디찾기, 비밀번호 찾기, 회원가입
        let stackView: UIStackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 40
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: googleLoginImageView.topAnchor, constant: 100).isActive = true
        
        let idFindButton: UIButton = UIButton()
        idFindButton.setTitle("아이디 찾기", for: .normal)
        idFindButton.setTitleColor(.gray, for: .normal)
        stackView.addArrangedSubview(idFindButton)
        
        
        let pwdFindButton: UIButton = UIButton()
        pwdFindButton.setTitle("비밀번호 찾기", for: .normal)
        pwdFindButton.setTitleColor(.gray, for: .normal)
        stackView.addArrangedSubview(pwdFindButton)
        
        let signUpButton: UIButton = UIButton()
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.blue, for: .normal)
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        stackView.addArrangedSubview(signUpButton)
        
    }
    @objc func googleLoginTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        print("google login touch")
    }
    
    @objc func naverLoginTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        print("naver login touch")
    }
    @objc func kakaoLoginTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        print("kakao login touch")
    }
    
    @objc func login() {
        
        print("login btn touch")
        //기능 테스트를 위해 id: pwd: 다음 string으로 하드 코딩
        
        //로그인 성공 시
        if(emailTextField.text == "kokori@test.com" && pwdTextField.text == "123") {
            //화면 전환 필요
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.isLogin = true
            // self.present(FirstViewController(), animated: true)
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(FirstViewController())
        } else {
            //로그인 실패 알람
            let invalidAlert = UIAlertController(title: "로그인 실패", message: "계정과 비밀번호를 다시한번 확인해 주세요", preferredStyle: UIAlertController.Style.alert)

            let confirm = UIAlertAction(title: "확인", style: UIAlertAction.Style.default, handler: nil)    //특별한 동작을 수행하지 않으므로 handler는 nil

            invalidAlert.addAction(confirm)

            present(invalidAlert, animated: true, completion: nil)
        }
    }
    
    @objc func signUp() {
        let signUptViewController: UIViewController = SignUpViewController()
        signUptViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(signUptViewController, animated: false)
    }
   
}
