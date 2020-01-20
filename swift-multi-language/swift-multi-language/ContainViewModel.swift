//
//  ContainViewModel.swift
//  swift-multi-language
//
//  Created by Huy Duong on 1/19/20.
//  Copyright © 2020 Huy Duong. All rights reserved.
//

import Foundation

public class ContainViewModel {
    
    func loadLanguage() -> [Language] {
        return [
            Language(flag: "cn", name: "Chinese", code: "zh"),
            Language(flag: "us", name: "English", code: "en"),
            Language(flag: "fr", name: "French", code: "fr"),
            Language(flag: "in", name: "Hindi", code: "hi-IN"),
            Language(flag: "np", name: "Nepali", code: "ne"),
            Language(flag: "ir", name: "Persian", code: "fa"),
            Language(flag: "vn", name: "Vietnamese", code: "vi")
        ]
    }

}
