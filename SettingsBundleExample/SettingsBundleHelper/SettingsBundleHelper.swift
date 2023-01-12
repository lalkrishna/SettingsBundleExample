//
//  SettingsBundleHelper.swift
//
//  Created by Lal Krishna on 01/07/20.
//

import Foundation

public struct SettingsBundleHelper {
    
    enum SettingsBundleIdentifier {
        static let BuildVersionKey = "build_pref"
        static let AppVersionKey = "version_pref"
    }
    
    public static func setVersionAndBuildNumber() {
        guard let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String,
              let build: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String else { return }
        UserDefaults.standard.set(version, forKey: SettingsBundleIdentifier.AppVersionKey)
        UserDefaults.standard.set(build, forKey: SettingsBundleIdentifier.BuildVersionKey)
    }
}
