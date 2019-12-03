//
//  LoginViewController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//
        

import UIKit

class LoginViewController: UIViewController {
    @IBAction func tapLoginButton(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "He-Wu.RootViewControllerNavigation.login")
        print("[Authentication] Login Successfully")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
