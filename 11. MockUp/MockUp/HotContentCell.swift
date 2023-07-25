//
//  HotContentCell.swift
//  MockUp
//
//  Created by 오영석 on 2023/07/21.
//

import UIKit

class HotContentViewCell: UICollectionViewCell {
    
    lazy var hotTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setLayoutConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setHotTitleLabel(index: Int) {
        hotTitleLabel.text = "새 글 제목 \(index)"
    }
    
    
    private func addViews() {
        [hotTitleLabel].forEach { item in
            addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setLayoutConstraints() {
        
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
            hotTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            hotTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            hotTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            hotTitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            hotTitleLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
