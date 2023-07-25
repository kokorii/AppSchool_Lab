//
//  NewPostViewController.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/21.
//

import UIKit

class NewPostViewController: UIViewController {
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "카테고리"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    let categoryButton: UIButton = {
        let button = UIButton()
        button.setTitle("연애 ⬇", for: .normal)
        button.layer.borderWidth = 2
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.textAlignment = .left
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        return button
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    let titleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "제목 입력하세요"
        textField.borderStyle = .bezel
        textField.font = .systemFont(ofSize: 20)
        textField.backgroundColor = .white
        return textField
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.text = "내용"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 30)
        return label
    }()
    
    let contentTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "내용을 입력하세요"
        textField.borderStyle = .bezel
        textField.font = .systemFont(ofSize: 20)
        textField.backgroundColor = .white
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    func configureUI() {
        view.backgroundColor = .systemBackground
        
        setNavigation()
        
        drawCategory()
        drawTitle()
        drawContent()
    }
    
    func setNavigation() {
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "작성 완료", style: .plain, target: self, action: #selector(saveButtonTapped))
    }
    
    func drawCategory() {
        [categoryLabel, categoryButton]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            categoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            categoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            categoryLabel.heightAnchor.constraint(equalToConstant: 50),
            
            categoryButton.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor),
            categoryButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            categoryButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            categoryButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func drawTitle() {
        [titleLabel, titleTextField]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: categoryButton.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            
            titleTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            titleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            titleTextField.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func drawContent() {
        [contentLabel, contentTextField]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            contentLabel.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentLabel.heightAnchor.constraint(equalToConstant: 50),
            
            contentTextField.topAnchor.constraint(equalTo: contentLabel.bottomAnchor),
            contentTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            contentTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            contentTextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func saveButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
