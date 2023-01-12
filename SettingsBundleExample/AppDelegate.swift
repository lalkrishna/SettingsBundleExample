//
//  AppDelegate.swift
//  SettingsBundleExample
//
//  Created by Lal Krishna on 12/01/23.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        SettingsBundleHelper.setVersionAndBuildNumber()
        
        return true
    }
}
