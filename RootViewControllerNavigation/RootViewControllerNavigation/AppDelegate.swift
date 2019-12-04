//
//  AppDelegate.swift
//  RootViewControllerNavigation
//
//  Created by he.wu on 2019/12/03.
//  Copyright © 2019 He Wu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = RootViewController()
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        
        return true
    }
}

extension AppDelegate {
    static var shared: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var rootViewController: RootViewController {
        return window?.rootViewController as! RootViewController
    }
}
