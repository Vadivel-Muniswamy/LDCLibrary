//
//  LDCLibraryDelegate.swift
//  LDCLibrary
//
//  Created by foolbuddies on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

public protocol LDCLibraryDelegate {
    func viewToDisplay() -> UIView
    func buttonForAction() -> UIButton
    func labelToDisplay() -> UILabel
    
    func authToken() -> String
    func userId() -> String

    func recordWithId() -> [String:String]
    func viewWithRecordId(_ recordId:String) -> UIView
    
    func baseUrlString() -> String
    func libBaseUrlString() -> String
}
