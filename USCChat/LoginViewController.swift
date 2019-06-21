//
//  LoginViewController.swift
//  USCChat
//
//  Created by Wilman Garcia on 6/20/19.
//  Copyright © 2019 Wilman Garcia. All rights reserved.
//

// TO DO:
//
// - Not happy with the gradient color

import UIKit

class LoginViewController: UIViewController {
    
    let inputsContainerView = UIView()
    let loginButton = UIButton()
    let nameTextField = UITextField()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let nameSeperator = UIView()
    let emailSeperator = UIView()
    let mainImage = UIImageView()
    
    
    override func viewDidLoad() {
        
        view.setGradientBackground(leftColor: UIColor.trojanRed, rightColor: UIColor.lightTojanRed)
        setUpContainerView()
        setUpLoginButton()
        setUpTextFields()
        setUpImageView()
    }
    
    func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .lightContent
    }
    
    func setUpContainerView(){
        
        // Creates container view for the login items
        inputsContainerView.backgroundColor = UIColor.white
        inputsContainerView.layer.cornerRadius = 5
        inputsContainerView.layer.masksToBounds = true
        // Enable Auto-layout
        inputsContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputsContainerView)
        
        // Need x, y, width, height constraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setUpTextFields(){
        
        nameTextField.placeholder = "Useraname"
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        inputsContainerView.addSubview(nameTextField)
        
        // Need x, y, width, height constraints
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor
        ).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive
         = true
        
        // Enter line below name
        nameSeperator.backgroundColor = UIColor.trojanWhite
        nameSeperator.translatesAutoresizingMaskIntoConstraints = false
        inputsContainerView.addSubview(nameSeperator)
        
        // Add Constraints
        nameSeperator.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor
        ).isActive = true
        nameSeperator.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeperator.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        // Email Text Field
        emailTextField.placeholder = "Email"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        inputsContainerView.addSubview(emailTextField)
        
        // Need x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameSeperator.topAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive
            = true
        
        // Enter line below email
        emailSeperator.backgroundColor = UIColor.trojanWhite
        emailSeperator.translatesAutoresizingMaskIntoConstraints = false
        inputsContainerView.addSubview(emailSeperator)
        
        // Add Constraints
        emailSeperator.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor
            ).isActive = true
        emailSeperator.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeperator.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // Password Text Field
        passwordTextField.placeholder = "Password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isSecureTextEntry = true
        inputsContainerView.addSubview(passwordTextField)
        
        // Need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSeperator.topAnchor
            ).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/3).isActive
            = true
    }
    
    func setUpLoginButton() {

        loginButton.backgroundColor = UIColor.darkTrojanRed
        loginButton.setTitle("Register", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.layer.shadowColor = UIColor(red:0.85, green:0.40, blue:0.10, alpha:1.00).cgColor
        loginButton.layer.shadowOffset =  CGSize(width: 0, height: 12)
        loginButton.layer.shadowRadius = 16
        loginButton.layer.shadowOpacity = 0.6
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        // Need x, y, height, width constraints
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        loginButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func setUpImageView(){
        mainImage.image = UIImage(named:"USCChatLogo")
        mainImage.contentMode = .scaleAspectFill
        view.addSubview(mainImage)
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints
        mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        mainImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        mainImage.heightAnchor.constraint(equalToConstant: 150).isActive = true

        
    }
    
    
}
