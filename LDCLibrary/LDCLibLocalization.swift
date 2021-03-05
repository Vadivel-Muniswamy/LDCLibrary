//
//  LDCLibLocalization.swift
//  LDCLibrary
//
//  Created by RBEI on 3/4/21.
//  Copyright © 2021 foolbuddies. All rights reserved.
//

import Foundation

struct LDCLib {
    struct LibVc {
        static var closeButtonTitle: String {
            LDCStringConstants.ldcCloseButtonTitle.ldcLocalize()
        }
    }
    
    struct LibAdlString {
        static var ldcString2: String {
            LDCStringConstants.ldcString2.ldcLocalize()
        }
        static var ldcString3: String {
            LDCStringConstants.ldcString3.ldcLocalize()
        }
    }
}

private struct LDCStringConstants {
    static let ldcCloseButtonTitle = "ldcCloseButtonTitle"
    static let ldcString2 = "ldcString2"
    static let ldcString3 = "ldcString3"
    static let ldcString4 = "ldcString4"
}

extension String {
    func ldcLocalize() -> String {
        let bundle = Bundle(for: LDCSharedLibrary.self)
        let string = NSLocalizedString(self, tableName: "LDCLibLocalization", bundle:bundle, comment: "")
        return string
    }
}
