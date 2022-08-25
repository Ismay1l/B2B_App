//
//  MainCollectionViewCell.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import UIKit

class NewsCollectionViewCell: UICollectionViewCell,
                              UICollectionViewDelegateFlowLayout,
                                UICollectionViewDataSource {
    
    let vm = ViewModel()
    
    private lazy var  mainCollectionView: UICollectionView  = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.showsHorizontalScrollIndicator = false
        
        view.backgroundColor = .systemGray6
        
        view.dataSource = self
        view.delegate = self
        
        view.register(NewsCellCollectionViewCell.self, forCellWithReuseIdentifier: "\(NewsCellCollectionViewCell.self)")
        
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
        
        contentView.addSubview(mainCollectionView)
        contentView.backgroundColor = .systemGray6
        
        mainCollectionView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        vm.newsItem.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(NewsCellCollectionViewCell.self)", for: indexPath) as! NewsCellCollectionViewCell
        cell.layer.cornerRadius = 10
        let item = vm.newsItem[indexPath.row]
        cell.setupItem(item: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 90)
    }
}
