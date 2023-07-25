////
////  SecondViewController.swift
////  MockUp
////
////  Created by gnksbm on 2023/07/20.
////
//
//import UIKit
//
//class SecondViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .systemBackground
//
//        title = "알림"
//
//        buildInterface()
//    }
//
//    func buildInterface() {
//        let safeArea = view.safeAreaLayoutGuide
//
//        let scrollView: UIScrollView = UIScrollView()
//        scrollView.backgroundColor = .clear
//        view.addSubview(scrollView)
//        scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height * 2)
//        scrollView.contentOffset = CGPoint(x: 0, y: 0)
//
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//
//        scrollView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
//        scrollView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor).isActive = true
//        scrollView.contentLayoutGuide.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        scrollView.heightAnchor.constraint(equalToConstant: 650).isActive = true
//
//        let groupView: UIStackView = UIStackView()
//        groupView.axis = .vertical
//        groupView.spacing = 20
//        scrollView.addSubview(groupView)
//        groupView.widthAnchor.constraint(equalTo: scrollView.contentLayoutGuide.widthAnchor).isActive = true
//        groupView.heightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.heightAnchor).isActive = true
//
//        for _ in 0...2 {
//            let alertView: UIView = UIView()
//            alertView.translatesAutoresizingMaskIntoConstraints = false
//            alertView.widthAnchor.constraint(equalTo: alertView.widthAnchor).isActive = true
//            groupView.addArrangedSubview(alertView)
//
//            let imageView: UIImageView = UIImageView()
//            imageView.image = UIImage(named: "mengu")
//            imageView.leadingAnchor.constraint(equalTo: alertView.leadingAnchor).isActive = true
//            imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
//            imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//            alertView.addSubview(imageView)
//
//            let alertTitleLabel: UILabel = UILabel()
//            alertTitleLabel.text = "알림제목"
//            alertTitleLabel.font = UIFont.boldSystemFont(ofSize: 15)
//            alertView.addSubview(alertTitleLabel)
//            alertTitleLabel.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 80).isActive = true
//            alertTitleLabel.centerYAnchor.constraint(equalTo: alertView.centerYAnchor, constant: -20).isActive = true
//
//            let alertLabel: UILabel = UILabel()
//            alertLabel.text = "알림내용"
//            alertLabel.font = alertLabel.font.withSize(10)
//            alertView.addSubview(alertLabel)
//            alertLabel.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 80).isActive = true
//            alertLabel.centerYAnchor.constraint(equalTo: alertView.centerYAnchor, constant: -20).isActive = true
//
//
//
//        }
//
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        title = "알림"

        buildInterface()
    }

    func buildInterface() {
        let safeArea = view.safeAreaLayoutGuide

        let alertView: UIView = UIView()
        alertView.translatesAutoresizingMaskIntoConstraints = false
        alertView.addSubview(view)
        alertView.widthAnchor.constraint(equalTo: alertView.widthAnchor).isActive = true
        alertView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        alertView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor).isActive = true

        for _ in 0...2 {
            let imageView: UIImageView = UIImageView()
            imageView.image = UIImage(named: "mengu")
            imageView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
            alertView.addSubview(imageView)
        }
    }
}
