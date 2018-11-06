//
//  AppDelegate.swift
//  lottie-practice
//
//  Created by Kevin Wang on 11/2/18.
//  Copyright © 2018 Kevin Wang. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    Fabric.with([Crashlytics.self])

    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = ViewController()
    window.makeKeyAndVisible()
    self.window = window

    return true
  }
}

