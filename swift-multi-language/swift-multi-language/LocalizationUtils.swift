//
//  LocalizationUtils.swift
//  swift-multi-language
//  Inspired from: https://github.com/leoiphonedev/Localization_to_Arabic_laguage_From_Inside_App-Tutorial
//
//  Created by Huy Duong on 1/19/20.
//  Copyright © 2020 Huy Duong. All rights reserved.
//

import Foundation

class LocalizationUtils: NSObject {
    
    var bundle: Bundle!
    
    class var sharedInstance: LocalizationUtils {
        struct Singleton {
            static let instance: LocalizationUtils = LocalizationUtils()
        }
        return Singleton.instance
    }
    
    override init() {
        super.init()
        bundle = Bundle.main
    }
    
    func resetLocalization() {
        bundle = Bundle.main
    }
    
    func setLanguage(languageCode:String) {
        if let languageDirectoryPath = Bundle.main.path(forResource: languageCode, ofType: "lproj")  {
            bundle = Bundle.init(path: languageDirectoryPath)
        } else {
            resetLocalization()
        }
    }
    
    func localizedStringForKey(key:String, comment:String) -> String {
        return bundle.localizedString(forKey: key, value: comment, table: nil)
    }
    
    func localizedDays() -> String {
        let string = "• \(bundle.localizedString(forKey: "monday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "tuesday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "wednesday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "thursday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "friday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "saturday", value: nil, table: nil))\n" +
            "• \(bundle.localizedString(forKey: "sunday", value: nil, table: nil))\n"
        return string
    }
    
}
