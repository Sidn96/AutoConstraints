//
//  UsesAutoLayout+propertyWrapper.swift
//  AutoConstraints
//
//  Created by BOPPO TECHNOLOGIES on 05/02/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

@propertyWrapper
public struct UsesAutoLayout<T: UIView> {
    public var wrappedValue: T {
        didSet {
            wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}

class MyViewController {
    @UsesAutoLayout
    var label = UILabel()
}
