//
//  LogoutViewController.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03
//  Copyright © 2019 He Wu. All rights reserved.
//
        

import UIKit

class LogoutViewController: UIViewController {
    private let activityIndicator = UIActivityIndicatorView()

    @IBAction func tapLogoutButton(_ sender: Any) {
        // temporary mock logout actions
        activityIndicator.startAnimating()
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 3) { [weak self] in
            print("Logout Successfully")
            self?.activityIndicator.stopAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(activityIndicator)
        activityIndicator.frame = view.bounds
        activityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.5)
    }
}
