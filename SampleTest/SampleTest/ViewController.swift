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
    
    let userNameField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 5.0
        textField.layer.borderWidth = 2.0
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isHidden = true
        return textField
    } ()
    let passwordField: UITextField = {
          let textField = UITextField()
          textField.layer.cornerRadius = 5.0
          textField.layer.borderWidth = 2.0
          textField.textAlignment = .left
          textField.translatesAutoresizingMaskIntoConstraints = false
          textField.isHidden = true
          return textField
      } ()
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginButton)
        view.addSubview(userNameField)
        view.addSubview(passwordField)
        setupButton()
        setupUserNameTextField()
        setupPasswordTextField()
    }
    
    internal func setupButton() {
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
    
    internal func setupUserNameTextField() {
        userNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
        userNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
        userNameField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -120.0).isActive = true
        userNameField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
    }
    internal func setupPasswordTextField() {
          passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true
          passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true
          passwordField.topAnchor.constraint(equalTo: userNameField.bottomAnchor, constant: 20.0).isActive = true
          passwordField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
      }
      
    
    @objc func didTapOnButton() {
        userNameField.isHidden = false
        userNameField.text = "  User Name:"
        passwordField.isHidden = false
        passwordField.text = "  Password:"
    }
}

