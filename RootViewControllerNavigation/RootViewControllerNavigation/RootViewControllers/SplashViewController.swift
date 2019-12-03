//
//  SplashViewController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//
        

import UIKit

class SplashViewController: UIViewController {
    private let activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(activityIndicator)
        activityIndicator.frame = view.bounds
        activityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.5)
        
        preloadServerAPI()
    }
    
    private func preloadServerAPI() {
        // mock server api connect
        activityIndicator.startAnimating()
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 3) { [weak self] in
            print("[API] Server API Preloaded")
            self?.activityIndicator.stopAnimating()
            
            // temporary use UserDefaults for checking status
            if UserDefaults.standard.bool(forKey: "He-Wu.RootViewControllerNavigation.login") {
                // navigate to main page
            } else {
                // navigate to login page
            }
        }
    }
}
