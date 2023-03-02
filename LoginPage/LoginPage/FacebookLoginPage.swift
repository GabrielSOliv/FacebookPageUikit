//
//  ViewController.swift
//  LoginPage
//
//  Created by Gabriel Oliveira on 28/02/23.
//

import UIKit

class FacebookLoginPage: UIViewController {
        
        private let emailTextField: UITextField = {
            let textField = UITextField()
            textField.placeholder = "Email"
            textField.borderStyle = .roundedRect
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
        
        private let passwordTextField: UITextField = {
            let textField = UITextField()
            textField.placeholder = "Password"
            textField.borderStyle = .roundedRect
            textField.isSecureTextEntry = true
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
        
        private let loginButton: UIButton = {
            let button = UIButton()
            button.setTitle("Login", for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            button.backgroundColor = UIColor(named: "ButtonColor")
            button.layer.cornerRadius = 10
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        private let signUpButton: UIButton = {
            let button = UIButton()
            button.setTitle("Don't have an account? Sign up.", for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.setTitleColor(.white, for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        private let forgotPasswordButton: UIButton = {
            let button = UIButton()
            button.setTitle("Forgot your password?", for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.setTitleColor(UIColor(named: "TextColor"), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        private let logoImageView: UIImageView = {
            let imageView = UIImageView(image: UIImage(named: "logo"))
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = UIColor(named: "BackgroundColor")
            
            view.addSubview(emailTextField)
            view.addSubview(passwordTextField)
            view.addSubview(loginButton)
            view.addSubview(signUpButton)
            view.addSubview(forgotPasswordButton)
            view.addSubview(logoImageView)
            
            NSLayoutConstraint.activate([
                logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImageView.widthAnchor.constraint(equalToConstant: 200),
                logoImageView.heightAnchor.constraint(equalToConstant: 100),
                
                emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
                emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
                passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
                loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                loginButton.heightAnchor.constraint(equalToConstant: 60),
                
                signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
                signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                forgotPasswordButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 10),
                forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
        }
    }



