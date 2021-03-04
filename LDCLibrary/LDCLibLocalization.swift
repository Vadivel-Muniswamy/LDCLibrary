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
            "ldcCloseButtonTitle".ldcLocalize()
        }
    }
}

extension String {
    func ldcLocalize() -> String {
        let bundle = Bundle(for: LDCSharedLibrary.self)
        return NSLocalizedString(self, tableName: nil, bundle:bundle, comment: "")
    }
}
