//
//  HomeVC.swift
//  test
//
//  Created by Ismayil Ismayilov on 21.08.22.
//

import UIKit
import SideMenu

class HomeVC: UIViewController {
    
    //MARK: - Variables
    
    var menu: SideMenuNavigationController?
    
    let vm = ViewModel()
    
    //MARK: - UI Elements
    
    private lazy var mainCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.showsVerticalScrollIndicator = false
        
        view.backgroundColor = .systemGray6
        
        view.delegate = self
        view.dataSource = self
        
        view.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: "\(NewsCollectionViewCell.self)")
        view.register(TenderCollectionViewCell.self, forCellWithReuseIdentifier: "\(TenderCollectionViewCell.self)")
        
        view.register(NewsHeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(NewsHeaderCollectionReusableView.self)")
        view.register(TenderHeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(TenderHeaderCollectionReusableView.self)")
        
        return view
    }()
    
    //MARK: - Parent Delegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        configureBarItems()
        setupSideMenu()
        configureConstraints()
        
        self.navigationController?.navigationBar.barTintColor = UIColor.systemGray6
//        tabBarController?.tabBar.barTintColor = UIColor.systemGray6
    }
    
    //MARK: - Functions
    
    private func configureConstraints() {
        
        let top = view.safeAreaLayoutGuide.snp.top
        let left = view.safeAreaLayoutGuide.snp.left
        let right = view.safeAreaLayoutGuide.snp.right
        let bottom = view.safeAreaLayoutGuide.snp.bottom
        
        view.addSubview(mainCollectionView)
        
        mainCollectionView.snp.makeConstraints { make in
            make.top.equalTo(top).offset(20)
            make.left.equalTo(left)
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
        }
    }
    
    private func setupSideMenu() {
        menu = SideMenuNavigationController(rootViewController: SideMenuVC())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: true)
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
    }
    
    private func configureBarItems() {
        let sideMenu = UIBarButtonItem(image: UIImage(named: "ic_sideMenu"),
                                       style: .plain,
                                       target: self,
                                       action: #selector(didTapSideMenu))
        
        sideMenu.tintColor = hexStringToUIColor(hex: "#231F20")
        
        let notificationButton = UIBarButtonItem(image: UIImage(named: "ic_notification"),
                                                 style: .plain,
                                                 target: self,
                                                 action: #selector(didTapNotification))
        
        notificationButton.tintColor = hexStringToUIColor(hex: "#231F20")
        notificationButton.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8)
        
        navigationItem.leftBarButtonItem = sideMenu
        navigationItem.rightBarButtonItem = notificationButton
    }
    
    @objc private func didTapSideMenu() {
        present(menu!, animated: true)
    }
    
    @objc private func didTapNotification() {
        let vc = NotificationVC()
        navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.backBarButtonItem?.title = ""
        vc.title = "Notifications"
    }
}
