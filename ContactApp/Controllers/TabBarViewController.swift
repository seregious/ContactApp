//
//  TabBarViewController.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 13.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        let data = Person.getPersonList()
        let contactsListVC = viewControllers?.first as! ContactsListViewController
        let detailedListVC = viewControllers?.last as!  DetailedListViewController
        
        contactsListVC.data = data
        detailedListVC.data = data
    }

}
