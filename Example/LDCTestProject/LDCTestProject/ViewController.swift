//
//  ViewController.swift
//  LDCTestProject
//
//  Created by foolbuddies on 12/19/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit
import LDCLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if !LDCSharedLibrary.isInitialized {
            LDCSharedLibrary.initialize(delegate: LDCLibDataProvider.shared())
        }
    }
    
    @IBAction func presentLibraryView(_ button:UIButton) {
        presentLDCView()
    }

    @IBAction func getAndPresentLibraryView(_ button:UIButton) {
        getAndPresentLDCView()
    }
}

extension ViewController {
    private func presentLDCView() {
        LDCSharedLibrary.shared().presentLibraryView(self)
    }

    private func getAndPresentLDCView() {
        let vc = LDCSharedLibrary.shared().getLibraryViewContoller()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }

}
