//
//  LDCSomeClass.swift
//  LDCTestProject
//
//  Created by foolbuddies on 12/19/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import Foundation

class LDCSomeClass {
    private static var instance: LDCSomeClass = {
        return  LDCSomeClass()
    }()

    private init() {}

    public class func shared() -> LDCSomeClass {return instance}

}
