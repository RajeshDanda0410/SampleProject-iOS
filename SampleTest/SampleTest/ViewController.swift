//
//  ViewController.swift
//  SampleTest
//
//  Created by Rajesh Danda on 1/20/21.
//  Copyright © 2021 Rajesh Danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 5.0
        button.layer.borderWidth = 2.0
        button.setTitle("Rajesh Danda", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapOnButton), for: .touchUpInside)
        return button
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        setupUserInterface()
    }

    func setupUserInterface() {
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
          button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    @objc func didTapOnButton() {
        print("Button Tapped")
    }

}

