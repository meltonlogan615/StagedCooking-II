//
//  LogInView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/25/22.
//

import Foundation
import UIKit

class LogInView: UIView {
  
  let logInStack = UIStackView()
  
  let chefEmailTextField = CustomTextField()
  let chefPasswordTextField = CustomTextField()
  let logInButton = ActionButton(type: .system)
  let signInWithAppleButton = SignInWithAppleButton()
  let newChefLabel = UILabel()
  let signUpButton = ActionButton(type: .system)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension LogInView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    backgroundColor = .clear
    
    logInStack.translatesAutoresizingMaskIntoConstraints = false
    logInStack.axis = .vertical
    logInStack.spacing = 24
    logInStack.distribution = .equalSpacing
    backgroundColor = .clear
    
    chefEmailTextField.translatesAutoresizingMaskIntoConstraints = false
    chefEmailTextField.placeholder = "Chef Email"
    
    chefPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    chefPasswordTextField.isSecureTextEntry = true
    chefPasswordTextField.placeholder = "Password"
    
    logInButton.translatesAutoresizingMaskIntoConstraints = false
    logInButton.configuration = .borderedTinted()
    logInButton.setTitle("Log In", for: [])

    signInWithAppleButton.translatesAutoresizingMaskIntoConstraints = false
    
    newChefLabel.translatesAutoresizingMaskIntoConstraints = false
    newChefLabel.textAlignment = .center
    newChefLabel.tintColor = UIColor(named: "AppBlack")
    newChefLabel.numberOfLines = 0
    newChefLabel.text = "New to Staged Cooking? \nCreate an account to add Favorites and view Saved, Previously Viewed and Previously Searched Recipes."
    
    signUpButton.translatesAutoresizingMaskIntoConstraints = false
    signUpButton.configuration = .borderedTinted()
    signUpButton.setTitle("Sign Up", for: [])
  }
  
  func layout() {
    logInStack.addArrangedSubview(chefEmailTextField)
    logInStack.addArrangedSubview(chefPasswordTextField)
    logInStack.addArrangedSubview(logInButton)
    logInStack.addArrangedSubview(signInWithAppleButton)
    
    chefEmailTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
    chefPasswordTextField.heightAnchor.constraint(equalToConstant: 56).isActive = true
    
    addSubview(logInStack)
    NSLayoutConstraint.activate([
      logInStack.centerYAnchor.constraint(equalTo: centerYAnchor),
      trailingAnchor.constraint(equalToSystemSpacingAfter: logInStack.trailingAnchor, multiplier: 1),
      logInStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
    
    addSubview(newChefLabel)
    NSLayoutConstraint.activate([
      newChefLabel.topAnchor.constraint(equalToSystemSpacingBelow: logInStack.bottomAnchor, multiplier: 4),
      newChefLabel.trailingAnchor.constraint(equalTo: logInStack.trailingAnchor),
      newChefLabel.leadingAnchor.constraint(equalTo: logInStack.leadingAnchor)
    ])
    
    addSubview(signUpButton)
    NSLayoutConstraint.activate([
      signUpButton.topAnchor.constraint(equalToSystemSpacingBelow: newChefLabel.bottomAnchor, multiplier: 2),
      signUpButton.trailingAnchor.constraint(equalTo: logInStack.trailingAnchor),
      signUpButton.leadingAnchor.constraint(equalTo: logInStack.leadingAnchor)
    ])
    
  }
}

extension LogInView: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    chefEmailTextField.endEditing(true)
    chefPasswordTextField.endEditing(true)
    return true
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
  }
}
