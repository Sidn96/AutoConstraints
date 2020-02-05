//
//  UserDefaultsConfig.swift
//  AutoConstraints
//
//  Created by LAPSHOP.IN on 05/02/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import Foundation

// The reason for this is that class stored properties are not supported in class extensions.
struct UserDefaultsConfig {
    @UserDefault("has_seen_app_introduction", defaultValue: false)
    static var hasSeenAppIntroduction: Bool

    @UserDefault("username", defaultValue: "Antoine van der Lee")
    static var username: String

    @UserDefault("year_of_birth", defaultValue: 1990)
    static var yearOfBirth: Int
}
