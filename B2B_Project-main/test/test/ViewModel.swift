//
//  SideMenuVM.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation

class ViewModel {
    
    var categories: [CategoryItem] = [
        CategoryItem(name: "Tender"),
        CategoryItem(name: "Products"),
        CategoryItem(name: "Services"),
        CategoryItem(name: "Requests"),
        CategoryItem(name: "Payments"),
        CategoryItem(name: "Deals"),
        CategoryItem(name: "Invoice"),
        CategoryItem(name: "Reviews")
    ]
    
    var newsItem: [NewsItem] = [
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
        NewsItem(image: "test"),
    ]
}
