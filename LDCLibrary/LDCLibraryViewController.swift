//
//  LDCLibraryViewController.swift
//  LDCLibrary
//
//  Created by foolbuddies on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

class LDCLibraryViewController: UIViewController {

    private var delegate:LDCLibraryDelegate!
    private var titleView:UIView?
    private var contentView:UIView?
    private var closeView:UIView?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.delegate = LDCSharedLibrary.shared().delegate
    }
    
    override func loadView() {
        super.loadView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

extension LDCLibraryViewController {
    private func setupViews() {
        self.view.backgroundColor = .white
        setupTitle()
        setupBottom()
        setupContent()
    }
    
    private func setupTitle() {
        let title = delegate.labelToDisplay()
        title.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(title)
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            title.topAnchor.constraint(equalTo: view.topAnchor),
            title.heightAnchor.constraint(equalToConstant: 64),
        ])
        titleView = title
    }

    private func setupBottom() {
        let button = delegate.buttonForAction()
        button.addTarget(self, action: #selector(closeWindow), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            button.heightAnchor.constraint(equalToConstant: 64),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        closeView = button
    }
    
    private func setupContent() {
        let content = delegate.viewToDisplay()
        content.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(content)
        NSLayoutConstraint.activate([
            content.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            content.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            content.topAnchor.constraint(equalTo: titleView!.bottomAnchor, constant: 16),
            content.bottomAnchor.constraint(equalTo: closeView!.topAnchor, constant: -16),
        ])
        closeView = content
    }
    
    @objc private func closeWindow() {
        dismiss(animated: true, completion: nil)
    }
}
