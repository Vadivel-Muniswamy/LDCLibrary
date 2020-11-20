//
//  LDCSharedLibrary.swift
//  LDCSharedLibrary
//
//  Created by RBEI on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

class LDCSharedLibrary {
    private static var shared:LDCSharedLibrary?
    private var delegate:LDCLibraryProtocol!

    private init() {
        fatalError("Should have delegate")
    }

    private init(_ delegate:LDCLibraryProtocol) {
        self.delegate = delegate
    }

    public static func initialize(_ delegate:LDCLibraryProtocol) {
        if let shared = shared {
            shared.delegate = delegate
        }
        else {
            shared = LDCSharedLibrary(delegate)
        }
    }
    
    public static func instance() -> LDCSharedLibrary {
        return shared!
    }
    
    public func presentLibrary(_ parent:UIViewController) {
        let view = LDCLibraryViewController(delegate)
        parent.present(view, animated:true)
    }
}
