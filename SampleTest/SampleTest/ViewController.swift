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
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapOnButton), for: .touchUpInside)
        return button
    } ()
    
    let label: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = 5.0
        label.layer.borderWidth = 2.0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.addSubview(label)
        setupButton()
        setupLabel()
    }

    internal func setupButton() {
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
          button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    internal func setupLabel() {
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        label.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -30.0).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    
    @objc func didTapOnButton() {
        label.isHidden = false
        label.text = "User Name"
    }
}

