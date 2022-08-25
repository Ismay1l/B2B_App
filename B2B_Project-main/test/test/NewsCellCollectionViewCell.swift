//
//  NewsCellCollectionViewCell.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import UIKit

class NewsCellCollectionViewCell: UICollectionViewCell {
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupUI()
    }
    
    private func setupUI () {
        
        contentView.addSubview(imageView)
        contentView.backgroundColor = .systemGray6
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func setupItem(item: NewsItem) {
        self.imageView.image = UIImage(named: item.image)
    }
}
