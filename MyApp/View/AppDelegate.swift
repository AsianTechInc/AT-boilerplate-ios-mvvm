//
//  AppDelegate.swift
//  MyApp
//
//  Created by DaoNV on 3/16/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import AlamofireNetworkActivityIndicator

let networkIndicator = NetworkActivityIndicatorManager.shared

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    static let shared: AppDelegate = {
        guard let shared = UIApplication.shared.delegate as? AppDelegate else {
            fatalError("Cannot cast `UIApplication.shared.delegate` to `AppDelegate`.")
        }
        return shared
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        configNetwork()
        return true
    }
}

extension AppDelegate {
    fileprivate func configNetwork() {
        networkIndicator.isEnabled = true
        networkIndicator.startDelay = 0
    }
}
