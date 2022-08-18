//
//  AppDelegate.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        startFlow()
        
        return true
    }
    
    func startFlow() {
        let myViewController = TwitterViewController(nibName: "TwitterViewController", bundle: nil)

        let navigationController = UINavigationController(rootViewController: myViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }


}

