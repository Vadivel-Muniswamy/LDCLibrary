//
//  LDCTView.swift
//  GraphTest
//
//  Created by foolbuddies on 20/11/20.
//  Copyright © 2020 foolbuddies. All rights reserved.
//

import UIKit

class LDCTView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupStackView()
    }
    
    private func setupStackView() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 16

        for number in 1...15 {
            stackView.addArrangedSubview(getLabel(number))
        }
 
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func getLabel(title:String) -> UILabel{
        let label = UILabel()
        label.text = title
        label.textColor = .red
        label.backgroundColor = .yellow
        label.layer.cornerRadius = 4
        return label
    }

    private func getLabel(_ number:Int) -> UILabel{
        return getLabel(title: "This is number \(number)")
    }
}

class LDCTLabel: UILabel {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 8
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 2
        layer.backgroundColor = UIColor.green.cgColor
        backgroundColor = .systemPink
        text = "LDC Library Test"
    }
}


class LDCTButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 8
        layer.borderColor = UIColor.green.cgColor
        layer.borderWidth = 2
        layer.backgroundColor = UIColor.red.cgColor
        backgroundColor = .systemBlue
        setTitle("Testing Passed... Close it", for: .normal)
        setTitleColor(.systemPurple, for: .normal)
    }
}
