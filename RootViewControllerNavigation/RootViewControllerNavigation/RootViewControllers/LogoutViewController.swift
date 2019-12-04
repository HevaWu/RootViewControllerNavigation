//
//  LogoutViewController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//
        

import UIKit

class LogoutViewController: UIViewController {

    @IBAction func tapLogoutButton(_ sender: Any) {
        // temporary mock logout actions
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) { [weak self] in
            print("Logout Successfully")
            UserDefaults.standard.set(false, forKey: "He-Wu.RootViewControllerNavigation.login")
            AppDelegate.shared.rootViewController.switchToLogin()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
