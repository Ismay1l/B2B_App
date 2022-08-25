//
//  MainTableViewController.swift
//  test
//
//  Created by Ismayil Ismayilov on 21.08.22.
//

import UIKit
import RAMAnimatedTabBarController
import SSCustomTabbar

class CustomTabBarController: RAMAnimatedTabBarController, AccountVCDelegate {
    
    func didTapSignOut() {
        navigationController?.popViewController(animated: true)
    }
    
    
    let accountVC = AccountVC()
    
    //SSCustomTabBarViewController - use this
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        configure()
        
        accountVC.delegate = self
    }
    
//    func didTapSignOut() {
//        navigationController?.popViewController(animated: true)
//    }
    
    private func configure() {
        
        let homeNC = HomeNavigationController()
        
        let searchNC = SearchNavigationController()
        
        let addTenderNC = AddTenderNavigationController()
        
        let statisticsNC = StatisticsNavigationController()
        
        let accountNC = AccountNavigationController()
        
        homeNC.tabBarItem = RAMAnimatedTabBarItem(title: "Home",
                                                  image: UIImage(named: "ic_home"),
                                                  tag: 1)
        
        searchNC.tabBarItem = RAMAnimatedTabBarItem(title: "Search",
                                                  image: UIImage(named: "ic_search"),
                                                  tag: 2)
        
        addTenderNC.tabBarItem = RAMAnimatedTabBarItem(title: "",
                                                  image: UIImage(named: "ic_add"),
                                                  tag: 3)
        
        statisticsNC.tabBarItem = RAMAnimatedTabBarItem(title: "Statistics",
                                                  image: UIImage(named: "ic_statistics"),
                                                  tag: 4)
        
        accountNC.tabBarItem = RAMAnimatedTabBarItem(title: "Account",
                                                  image: UIImage(named: "ic_account"),
                                                  tag: 5)
        
        (homeNC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        (searchNC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        (addTenderNC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        (statisticsNC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        (accountNC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMBounceAnimation()
        
        setViewControllers([homeNC, searchNC, addTenderNC, statisticsNC, accountNC], animated: true)
    }
}




