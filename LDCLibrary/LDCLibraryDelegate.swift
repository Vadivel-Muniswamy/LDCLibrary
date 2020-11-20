//
//  LDCLibraryDelegate.swift
//  LDCLibrary
//
//  Created by RBEI on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

public protocol LDCLibraryDelegate {
    func viewToDisplay() -> UIView
    func buttonForAction() -> UIButton
    func labelToDisplay() -> UILabel
}
