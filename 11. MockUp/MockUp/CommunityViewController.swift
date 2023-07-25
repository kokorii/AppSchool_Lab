//
//  CommunityViewController.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class CommunityViewController: UIViewController {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "연애"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var communityPostTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.register(CommunityViewTVCell.self, forCellReuseIdentifier: CommunityViewTVCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let addPostButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "plus.circle")
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(addPostButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        drawTitleLabel()
        drawTableView()
        drawAddButton()
    }
    
    func drawTitleLabel() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    func drawTableView() {
        view.addSubview(communityPostTableView)
        NSLayoutConstraint.activate([
            communityPostTableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            communityPostTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            communityPostTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            communityPostTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func drawAddButton() {
        view.addSubview(addPostButton)
        NSLayoutConstraint.activate([
            addPostButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addPostButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            addPostButton.widthAnchor.constraint(equalToConstant: 50),
            addPostButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func addPostButtonTapped() {
        navigationController?.pushViewController(NewPostViewController(), animated: true)
    }
}

extension CommunityViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UIScreen.main.bounds.height / 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CommunityViewTVCell.identifier, for: indexPath) as! CommunityViewTVCell
        return cell
    }
}

extension CommunityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(CommunityPostViewController(), animated: true)
    }
}
