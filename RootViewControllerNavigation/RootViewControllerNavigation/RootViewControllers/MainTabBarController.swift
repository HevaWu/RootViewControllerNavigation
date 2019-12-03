//
//  MainTabBarController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//
        

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstVC = FirstViewController()
        firstVC.title = "First View Controller"
        
        let logoutVC = LogoutViewController()
        logoutVC.title = "Logout View Controller"
        
        var viewControllers = [UIViewController]()
        for viewController in [firstVC, logoutVC] {
            viewControllers.append(UINavigationController(rootViewController: viewController))
        }
        setViewControllers(viewControllers, animated: false)
    }
}
