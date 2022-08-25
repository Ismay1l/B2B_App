//
//  CustomTabBarController+Extension.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import RAMAnimatedTabBarController

extension RAMAnimatedTabBarItem {
    
    convenience init(title: String, image: UIImage?, tag: Int, animation: RAMItemAnimation, selectedColor: UIColor, unselectedColor: UIColor) {
        self.init(title: title, image: image, tag: 0)
        animation.iconSelectedColor = selectedColor
        animation.textSelectedColor = selectedColor
        self.animation = animation
        self.textColor = unselectedColor
        self.iconColor = unselectedColor
    }
}
