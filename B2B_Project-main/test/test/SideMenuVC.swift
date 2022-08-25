//
//  SideMenuVC.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import UIKit

class SideMenuVC: UIViewController {
    
    //MARK: - Variables
    
    let vm = ViewModel()
    
    //MARK: - UI Elements
    
    private lazy var sideMenuTableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(SideMenuTableViewCell.self, forCellReuseIdentifier: "\(SideMenuTableViewCell.self)")
        view.backgroundColor = darkColor
        return view
    }()
    
    private lazy var profilePicture: UIImageView = {
        let view = UIImageView(image: UIImage(named: "profilePicture"))
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
    
    //MARK: - Parent Delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = darkColor
        configureConstraints()
    }
    
    private func configureConstraints() {
        view.addSubview(profilePicture)
        view.addSubview(sideMenuTableView)
        
        profilePicture.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(29)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(23)
            make.width.height.equalTo(80)
        }
        
        sideMenuTableView.snp.makeConstraints { make in
            make.top.equalTo(profilePicture.snp.bottom).offset(25)
            make.left.equalTo(profilePicture.snp.left)
            make.height.equalTo(view.frame.size.height)
            make.width.equalTo(view.frame.size.width)
        }
    }
}


