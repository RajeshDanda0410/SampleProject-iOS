//
//  ViewController.swift
//  SampleTest
//
//  Created by Rajesh Danda on 1/20/21.
//  Copyright © 2021 Rajesh Danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 5.0
        button.layer.borderWidth = 2.0
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapOnButton), for: .touchUpInside)
        return button
    } ()
    
    let userNameLabel: UILabel = {
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
        view.addSubview(loginButton)
        view.addSubview(userNameLabel)
        setupButton()
        setupLabel()
    }
    
    internal func setupButton() {
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    internal func setupLabel() {
        userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        userNameLabel.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -30.0).isActive = true
        userNameLabel.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    
    
    @objc func didTapOnButton() {
        userNameLabel.isHidden = false
        userNameLabel.text = "User Name"
    }
}

