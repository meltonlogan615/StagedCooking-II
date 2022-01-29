//
//  LogInViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/24/22.
//

import Foundation

// Sign in with Apple Only?

import UIKit

class LogInViewController: UIViewController {
  
  let logInView = LogInView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
    addButtonActions()
  }
}

extension LogInViewController {
  func style() {
    logInView.translatesAutoresizingMaskIntoConstraints = false
  }
  func layout() {
    view.addSubview(logInView)
    
    NSLayoutConstraint.activate([
      logInView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      logInView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: logInView.trailingAnchor, multiplier: 2),
      logInView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2)
    ])
    
    
  }
}

extension LogInViewController {
  func addButtonActions() {
    logInView.logInButton.addTarget(self, action: #selector(logInTapped), for: .primaryActionTriggered)
  }
  
  @objc func logInTapped(_ sender: UIButton) {
    let signUpVC = SignUpViewController()
    let navigationController = UINavigationController(rootViewController: signUpVC)
    navigationController.modalPresentationStyle = .fullScreen
    navigationController.modalTransitionStyle = .crossDissolve
    present(navigationController, animated: true)
  }
}

