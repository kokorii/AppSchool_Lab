//
//  FirstViewController.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    let homeView = HomeView()
    
    convenience init(title: String) {
        self.init()
        self.title = title
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        
        navigationItem.rightBarButtonItem = addButton
    }
    
    override func loadView() {
        self.view = homeView
        homeView.categoryCollectionView.delegate = self
        homeView.categoryCollectionView.dataSource = self
        homeView.hotContentCollectionView.delegate = self
        homeView.hotContentCollectionView.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.categoryCollectionView.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: "CategoryCell")
        homeView.hotContentCollectionView.register(HotContentViewCell.self, forCellWithReuseIdentifier: "HotCell")
    }
    
    @objc private func addButtonTapped() {
        print("Add button tapped")
    }
}


extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(CommunityViewController(), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == homeView.categoryCollectionView {
            let spacing: CGFloat = 25
            let allSpacing: CGFloat = spacing * 3
            let width = (collectionView.bounds.width - allSpacing) / 2
            let height: CGFloat = 130
            
            return CGSize(width: width, height: height)
            
        } else if collectionView == homeView.hotContentCollectionView {
            let spacing: CGFloat = 25
            let allSpacing: CGFloat = spacing * 2
            let width = (collectionView.bounds.width - allSpacing)
            let height: CGFloat = 50
            
            return CGSize(width: width, height: height)
        }
        
        return CGSize()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == homeView.categoryCollectionView {
            let cellCount: Int = 10
            
            return cellCount
            
        } else if collectionView == homeView.hotContentCollectionView {
            let cellCount: Int = 5
            
            return cellCount
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if collectionView == homeView.categoryCollectionView {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCollectionViewCell
                
                cell.contentView.layer.borderWidth = 2.0
                cell.contentView.layer.borderColor = UIColor.black.cgColor
                
                return cell
                
            
        } else if collectionView == homeView.hotContentCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotCell", for: indexPath) as! HotContentViewCell
            
            cell.contentView.layer.borderWidth = 2.0
            cell.contentView.layer.borderColor = UIColor.black.cgColor
            cell.setHotTitleLabel(index: indexPath.item + 1)
            
            return cell
        }
        
        return UICollectionViewCell()
    }
}
