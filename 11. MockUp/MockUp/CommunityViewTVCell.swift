//
//  CommunityPostTVCell.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class CommunityViewTVCell: UITableViewCell {
    static let identifier: String = "CommunityPostTVCell"
    
    let topViewHeight: CGFloat = 40
    
    let mainView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = topViewHeight / 2.2
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
        label.numberOfLines = 2
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        drawMainView()
        drawTopView()
        drawTextView()
    }
    
    func drawMainView() {
        contentView.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ])
    }
    
    func drawTopView() {
        mainView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 15),
            topView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: topViewHeight),
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
            userImageView.widthAnchor.constraint(equalToConstant: topViewHeight),
            userImageView.heightAnchor.constraint(equalToConstant: topViewHeight),
            userImageView.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            
            userNameLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -10),
            userNameLabel.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 6),
            userNameLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
        ])
    }
    
    func drawTextView() {
        mainView.addSubview(postContentLabel)
        NSLayoutConstraint.activate([
            postContentLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            postContentLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            postContentLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            postContentLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor),
        ])
    }
}

