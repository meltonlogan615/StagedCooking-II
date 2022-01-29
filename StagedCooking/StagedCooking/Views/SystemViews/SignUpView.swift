//
//  SignUpView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/25/22.
//

import Foundation
import UIKit

class SignUpView: UIView {
  
  let signUpStack = UIStackView()
  let firstNameTextField = CustomTextField()
  let emailTextField = CustomTextField()
  let passwordTextField = CustomTextField()
  let passwordConfirmationTextField = CustomTextField()
  let signUpButton = UIButton(type: .system)
  let signInWithAppleButton = SignInWithAppleButton()
  
  let alreadyChefLabel = UILabel()
  let loginButton = ActionButton(type: .system)
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension SignUpView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    signUpStack.translatesAutoresizingMaskIntoConstraints = false
    signUpStack.axis = .vertical
    signUpStack.spacing = 24
    signUpStack.backgroundColor = .green
    
    firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
    firstNameTextField.placeholder = "Chef's First Name"
    
    emailTextField.translatesAutoresizingMaskIntoConstraints = false
    emailTextField.placeholder = "Chef Email"
    
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    passwordTextField.isSecureTextEntry = true
    passwordTextField.placeholder = "Password"
    
    passwordConfirmationTextField.translatesAutoresizingMaskIntoConstraints = false
    passwordConfirmationTextField.isSecureTextEntry = true
    passwordConfirmationTextField.placeholder = "Confirm Password"

    signUpButton.translatesAutoresizingMaskIntoConstraints = false
    signUpButton.configuration = .borderedTinted()
    signUpButton.setTitle("Sign Up", for: [])

    signInWithAppleButton.translatesAutoresizingMaskIntoConstraints = false
    
    alreadyChefLabel.translatesAutoresizingMaskIntoConstraints = false
    alreadyChefLabel.textAlignment = .center
    alreadyChefLabel.numberOfLines = 0
    alreadyChefLabel.text = "Already have an account? \nSign in to view your Favorites, Saved, Previously Viewed and Previously Searched Recipes."
    
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    loginButton.configuration = .borderedTinted()
    loginButton.setTitle("Log In", for: [])
  }
  
  func layout() {
    signUpStack.addArrangedSubview(firstNameTextField)
    signUpStack.addArrangedSubview(emailTextField)
    signUpStack.addArrangedSubview(passwordTextField)
    signUpStack.addArrangedSubview(passwordConfirmationTextField)
    signUpStack.addArrangedSubview(signUpButton)
    signUpStack.addArrangedSubview(signInWithAppleButton)
    
    firstNameTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
    emailTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
    passwordTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
    passwordConfirmationTextField.heightAnchor.constraint(equalToConstant: 32).isActive = true
    
    addSubview(signUpStack)
    NSLayoutConstraint.activate([
      signUpStack.centerYAnchor.constraint(equalTo: centerYAnchor),
      trailingAnchor.constraint(equalToSystemSpacingAfter: signUpStack.trailingAnchor, multiplier: 1),
      signUpStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
    addSubview(alreadyChefLabel)
    NSLayoutConstraint.activate([
      alreadyChefLabel.topAnchor.constraint(equalToSystemSpacingBelow: signUpStack.bottomAnchor, multiplier: 2),
      alreadyChefLabel.trailingAnchor.constraint(equalTo: signUpStack.trailingAnchor),
      alreadyChefLabel.leadingAnchor.constraint(equalTo: signUpStack.trailingAnchor)
    ])
    addSubview(loginButton)
    
  }
}

// MARK: - UITextFieldDelegate
extension SignUpView: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    switch textField {
      case firstNameTextField:
        emailTextField.becomeFirstResponder()
      case emailTextField:
        passwordTextField.becomeFirstResponder()
      case passwordTextField:
        passwordConfirmationTextField.becomeFirstResponder()
      default:
        passwordConfirmationTextField.resignFirstResponder()
    }
    return true
  }
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    if textField.text != "" {
      return true
    } else {
      return false
    }
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
  }
}
