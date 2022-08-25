//
//  AccountVC.swift
//  test
//
//  Created by Ismayil Ismayilov on 21.08.22.
//

import UIKit

class AccountVC: UIViewController {
    
    var delegate: AccountVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        tabBarController?.tabBar.barTintColor = UIColor.systemGray6
        
        let signOutButton = UIBarButtonItem(title: "Sign out", style: .plain, target: self, action: #selector(didTapSignOut))
        
        navigationItem.rightBarButtonItem = signOutButton
    }
    
    @objc private func didTapSignOut() {
        delegate?.didTapSignOut()
    }
}
