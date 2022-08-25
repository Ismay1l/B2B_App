//
//  NewsHeaderCollectionReusableView.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import UIKit

class NewsHeaderCollectionReusableView: UICollectionReusableView {
        
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "News"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = .center
        label.textColor = hexStringToUIColor(hex: "#231F20")
        return label
    }()
    
    public func configure() {
        backgroundColor = .systemGray6
        addSubview(headerLabel)
        
        headerLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(25)
            make.top.equalToSuperview()
        }
    }
}

class TenderHeaderCollectionReusableView: UICollectionReusableView {
        
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Last added tender"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = .center
        label.textColor = hexStringToUIColor(hex: "#231F20")
        return label
    }()
    
    public func configure() {
        backgroundColor = .systemGray6
        addSubview(headerLabel)
        
        headerLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(25)
            make.top.equalToSuperview()
        }
    }
}
