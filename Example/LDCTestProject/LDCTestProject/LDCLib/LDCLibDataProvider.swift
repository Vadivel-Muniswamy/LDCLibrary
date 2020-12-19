//
//  LDCLibDataProvider.swift
//  LDCTestProject
//
//  Created by foolbuddies on 12/19/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import Foundation
import LDCLibrary

class LDCLibDataProvider {
    private static var instance: LDCLibDataProvider = {
        return  LDCLibDataProvider()
    }()

    private init() {}

    public class func shared() -> LDCLibDataProvider {return instance}
}

extension LDCLibDataProvider: LDCLibraryDelegate {

    /* ********************************************* */
    func viewToDisplay() -> UIView {
        LDCTView()
    }
    
    func buttonForAction() -> UIButton {
        LDCTButton()
    }
    
    func labelToDisplay() -> UILabel {
        LDCTLabel()
    }
    
    /* ********************************************* */
    func authToken() -> String {
        "tHis!sM7T0k@n"
    }
    
    func userId() -> String {
        "tHis!sM7U5er!d"
    }
    
    /* ********************************************* */
    func recordWithId() -> [String : String] {
        ["key":"value", "key2":"value2"]
    }
    
    func viewWithRecordId(_ recordId: String) -> UIView {
        LDCTView()
    }
    
    /* ********************************************* */
    func baseUrlString() -> String {
        "https://www.google.com"
    }
    
    func libBaseUrlString() -> String {
        "https://cloud.google.com/"
    }
}
