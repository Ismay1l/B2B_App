//
//  MainCollectionViewCell.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import UIKit

class TenderCollectionViewCell: UICollectionViewCell {
    
    required init?(coder: NSCoder) {
            fatalError()
        }
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            self.setupUI()
        }
        
    private func setupUI () {}
}
