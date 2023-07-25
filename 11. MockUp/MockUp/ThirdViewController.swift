//
//  ThirdViewController.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemBackground
        
        title = "마이페이지"
        
        buildInterface()
    }
    
    func buildInterface() {
        let safeArea = view.safeAreaLayoutGuide
        
        // 프로필 사진을 보여줄 UIImageView
        let profileImageView:UIImageView = UIImageView()
        profileImageView.image = UIImage(named: "mengu") // 기본 이미지 설정
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.clipsToBounds = true
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        
        
        // 닉네임을 보여줄 UILabel
        let nicknameLabel: UILabel = UILabel()
        nicknameLabel.text = "김멋사" // 기본 닉네임 설정
        nicknameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nicknameLabel)
        
        //프로필 편집 버튼
        let editProfileButton: UIButton = UIButton()
        editProfileButton.setTitle(" 프로필 편집 ", for: .normal)
        editProfileButton.setTitleColor(.white, for: .normal)
        editProfileButton.backgroundColor = UIColor.lightGray
        editProfileButton.layer.cornerRadius = 5.0
        editProfileButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(editProfileButton)
        
        //공지사항 버튼
        let noticeButton: UIButton = UIButton()
        noticeButton.setTitle("공지사항 📣", for: .normal)
        noticeButton.setTitleColor(.black, for: .normal)
//        noticeButton.layer.borderWidth = 1.0
//        noticeButton.layer.borderColor = UIColor.black.cgColor
//        noticeButton.layer.cornerRadius = 10.0
        noticeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(noticeButton)
        
        //고객센터 버튼
        let customerServiceButton: UIButton = UIButton()
        customerServiceButton.setTitle("고객센터 🫡", for: .normal)
        customerServiceButton.setTitleColor(.black, for: .normal)
        customerServiceButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(customerServiceButton)
        
        //스크랩북 레이블
        let scrapbookLabel: UILabel = UILabel()
        scrapbookLabel.text = "스크랩북"
        scrapbookLabel.font = UIFont.boldSystemFont(ofSize: 24)
        scrapbookLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrapbookLabel)
        
        //내가 쓴 글 버튼
        let myPostsButton: UIButton = UIButton()
        myPostsButton.setTitle("내가 쓴 글 ✍️", for: .normal)
        myPostsButton.setTitleColor(.brown, for: .normal)
        myPostsButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myPostsButton)
        
        //내가 좋아한 글 버튼
        let likedPostsButton: UIButton = UIButton()
        likedPostsButton.setTitle("내가 좋아한 글 💟", for: .normal)
        likedPostsButton.setTitleColor(.brown, for: .normal)
        likedPostsButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(likedPostsButton)
        
        //최근 본 글 버튼
        let recentPostsButton: UIButton = UIButton()
        recentPostsButton.setTitle("최근 본 글 👀", for: .normal)
        recentPostsButton.setTitleColor(.brown, for: .normal)
        recentPostsButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(recentPostsButton)
        
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            profileImageView.widthAnchor.constraint(equalToConstant: 60),
            profileImageView.heightAnchor.constraint(equalToConstant: 60),
            
            nicknameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            nicknameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: -20),
            
            editProfileButton.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            editProfileButton.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: 20),
            
            noticeButton.topAnchor.constraint(equalTo: editProfileButton.bottomAnchor, constant: 40),
            noticeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            customerServiceButton.topAnchor.constraint(equalTo: noticeButton.bottomAnchor, constant: 10),
            customerServiceButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            scrapbookLabel.topAnchor.constraint(equalTo: customerServiceButton.bottomAnchor, constant: 60),
            scrapbookLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            myPostsButton.topAnchor.constraint(equalTo: scrapbookLabel.bottomAnchor, constant: 20),
            myPostsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            likedPostsButton.topAnchor.constraint(equalTo: myPostsButton.bottomAnchor, constant: 10),
            likedPostsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            recentPostsButton.topAnchor.constraint(equalTo: likedPostsButton.bottomAnchor, constant: 10),
            recentPostsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
        
        
    }
    
    
    
    
    
    
    
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


