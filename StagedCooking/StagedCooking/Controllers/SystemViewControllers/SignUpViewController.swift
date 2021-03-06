//
//  SignUpViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/25/22.
//

import UIKit

class SignUpViewController: UIViewController {
  
  let signUpView = SignUpView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    accessibilityLabel = "Sign Up for Staged Cooking"
    style()
    layout()
    addButtonActions()
  }
}

extension SignUpViewController {
  func style() {
    signUpView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    view.addSubview(signUpView)
    NSLayoutConstraint.activate([
      signUpView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      signUpView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: signUpView.trailingAnchor, multiplier: 2),
      signUpView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2)
    ])
  }
}

extension SignUpViewController {
  func addButtonActions() {
    signUpView.signUpButton.addTarget(self, action: #selector(signUpTapped), for: .primaryActionTriggered)
    signUpView.signInWithAppleButton.addTarget(self, action: #selector(appleSignUpTapped), for: .primaryActionTriggered)
  }
  
  @objc func signUpTapped(_ sender: UIButton) {
    let logInVC = LogInViewController()
    let navigationController = UINavigationController(rootViewController: logInVC)
    navigationController.modalPresentationStyle = .fullScreen
    navigationController.modalTransitionStyle = .crossDissolve
    present(navigationController, animated: true)
  }
  
  @objc func appleSignUpTapped(_ sender: UIButton) {
    let searchVC = SearchViewController()
    searchVC.modalPresentationStyle = .fullScreen
    searchVC.modalTransitionStyle = .crossDissolve
    present(searchVC, animated: true, completion: nil)
  }
}
