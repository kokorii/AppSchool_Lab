//
//  CommunityDetailViewController.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class CommunityPostViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.clipsToBounds = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.image = UIImage(systemName: "person.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임"
        label.font = .boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let postContentLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("👍", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40)
        button.layer.borderWidth = 2
        button.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let commentTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "댓글"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let commentUserView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let commentUserImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.image = UIImage(systemName: "person.fill")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let commentUserNameLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임"
        label.font = .boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let commentContentLabel: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n"
        label.numberOfLines = 0
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let commentTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "댓글을 입력하세요"
        textField.borderStyle = .bezel
        textField.font = .systemFont(ofSize: 20)
        textField.backgroundColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("✉️", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        drawScrollView()
        drawTopView()
        drawPostContentLabel()
        drawLikeButton()
        drawCommentTitle()
        drawCommentUser()
        drawCommentContentLabel()
        drawCommentTextField()
    }
    
    func drawScrollView() {
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.frameLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.frameLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.frameLayoutGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.frameLayoutGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            scrollView.contentLayoutGuide.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
        ])
    }
    
    func drawTopView() {
        scrollView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 15),
            topView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        [titleLabel, userImageView, userNameLabel]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                topView.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20),
            titleLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 4),
            titleLabel.heightAnchor.constraint(equalTo: topView.heightAnchor),
            
            userImageView.trailingAnchor.constraint(equalTo: userNameLabel.leadingAnchor, constant: -10),
            userImageView.widthAnchor.constraint(equalTo: topView.heightAnchor, constant: -5),
            userImageView.heightAnchor.constraint(equalTo: topView.heightAnchor, constant: -5),
            userImageView.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            
            userNameLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -10),
            userNameLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 6),
            userNameLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
        ])
    }
    
    func drawPostContentLabel() {
        scrollView.addSubview(postContentLabel)
        NSLayoutConstraint.activate([
            postContentLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            postContentLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            postContentLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
        ])
    }
    
    func drawLikeButton() {
        scrollView.addSubview(likeButton)
        NSLayoutConstraint.activate([
            likeButton.topAnchor.constraint(equalTo: postContentLabel.bottomAnchor, constant: 50),
            likeButton.widthAnchor.constraint(equalToConstant: 150),
            likeButton.heightAnchor.constraint(equalToConstant: 50),
            likeButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        ])
    }
    
    func drawCommentTitle() {
        scrollView.addSubview(commentTitleLabel)
        NSLayoutConstraint.activate([
            commentTitleLabel.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 50),
            commentTitleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            commentTitleLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    func drawCommentUser() {
        scrollView.addSubview(commentUserView)
        NSLayoutConstraint.activate([
            commentUserView.topAnchor.constraint(equalTo: commentTitleLabel.bottomAnchor, constant: 10),
            commentUserView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            commentUserView.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        [commentUserImageView, commentUserNameLabel]
            .forEach {
                commentUserView.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            commentUserImageView.leadingAnchor.constraint(equalTo: commentUserView.leadingAnchor),
            commentUserImageView.heightAnchor.constraint(equalTo: commentUserView.heightAnchor, constant: -5),
            commentUserImageView.widthAnchor.constraint(equalTo: commentUserView.heightAnchor, constant: -5),
            commentUserImageView.centerYAnchor.constraint(equalTo: commentUserView.centerYAnchor),
            
            commentUserNameLabel.leadingAnchor.constraint(equalTo: commentUserImageView.trailingAnchor, constant: 10),
            commentUserNameLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 6),
            commentUserNameLabel.centerYAnchor.constraint(equalTo: commentUserView.centerYAnchor),
        ])
    }
    
    func drawCommentContentLabel() {
        scrollView.addSubview(commentContentLabel)
        NSLayoutConstraint.activate([
            commentContentLabel.topAnchor.constraint(equalTo: commentUserView.bottomAnchor, constant: 10),
            commentContentLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            commentContentLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            commentContentLabel.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -20),
        ])
    }
    
    func drawCommentTextField() {
        view.addSubview(commentTextField)
        view.addSubview(commentButton)
        NSLayoutConstraint.activate([
            commentTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            commentTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            commentTextField.heightAnchor.constraint(equalToConstant: 40),
            commentTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            
            commentButton.trailingAnchor.constraint(equalTo: commentTextField.trailingAnchor, constant: -10),
            commentButton.widthAnchor.constraint(equalToConstant: 30),
            commentButton.heightAnchor.constraint(equalToConstant: 30),
            commentButton.centerYAnchor.constraint(equalTo: commentTextField.centerYAnchor),
        ])
    }
    
    @objc func likeButtonTapped() { }
}
