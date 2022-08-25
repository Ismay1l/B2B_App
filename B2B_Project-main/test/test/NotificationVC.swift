//
//  NotificationVC.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import UIKit

class NotificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        tabBarController?.tabBar.barTintColor = UIColor.systemGray6
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
}
