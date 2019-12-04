//
//  RootViewController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//


import UIKit

final class RootViewController: UIViewController {
    
    private var root: UIViewController
    
    init() {
        root = SplashViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        addChild(root)
        root.view.frame = view.bounds
        view.addSubview(root.view)
        root.didMove(toParent: self)
    }
    
    func switchToLogin() {
        let loginVC = LoginViewController()
        
        addChild(loginVC)
        loginVC.view.frame = view.bounds
        view.addSubview(loginVC.view)
        loginVC.didMove(toParent: self)
        
        // remove original one
        root.willMove(toParent: nil)
        root.view.removeFromSuperview()
        root.removeFromParent()
        
        // replace root with loginVC
        root = loginVC
    }
    
    func switchToMain() {
        let mainVC = MainTabBarController()
        
        addChild(mainVC)
        mainVC.view.frame = view.bounds
        view.addSubview(mainVC.view)
        mainVC.didMove(toParent: self)
        
        root.willMove(toParent: nil)
        root.view.removeFromSuperview()
        root.removeFromParent()
        
        root = mainVC
    }
}


