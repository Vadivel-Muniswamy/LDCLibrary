//
//  LDCSharedLibrary.swift
//  LDCLibrary
//
//  Created by foolbuddies on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

public class LDCSharedLibrary {
    
    var delegate:LDCLibraryDelegate
    private static var instance: LDCSharedLibrary? = nil
    
    public static func initialize(delegate:LDCLibraryDelegate) {
        if let _ = instance {
            fatalError("instance should be initialized only once")
        }
        else {
            instance = LDCSharedLibrary(delegate: delegate)
        }
    }
    
    @discardableResult
    public static func shared() -> LDCSharedLibrary {
        if let instance = instance {
            return instance
        }
        else {
            fatalError("instance should be initialized before using")
        }
    }
    
    private init(delegate:LDCLibraryDelegate) {
        self.delegate = delegate
    }

    public func presentLibraryView(_ parent:UIViewController) {
        let view = LDCLibraryViewController()
        view.modalPresentationStyle = .overFullScreen
        parent.present(view, animated:true)
    }

    public func getLibraryViewContoller() -> UIViewController {
        return LDCLibraryViewController()
    }

}
