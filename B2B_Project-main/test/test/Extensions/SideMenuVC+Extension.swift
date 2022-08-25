//
//  SideMenuVC+Extension.swift
//  test
//
//  Created by USER11 on 8/25/22.
//

import Foundation
import UIKit

extension SideMenuVC: UITableViewDelegate,
                      UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vm.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(SideMenuTableViewCell.self)", for: indexPath) as! SideMenuTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = darkColor
        let item = vm.categories[indexPath.row]
        cell.setupCell(item: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\( vm.categories[indexPath.row])")
    }
}
