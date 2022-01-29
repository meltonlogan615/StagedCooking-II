//
//  SignInWithAppleButton.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import Foundation
import UIKit

class SignInWithAppleButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    style()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension SignInWithAppleButton {
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    configuration = .borderedTinted()
    configuration?.buttonSize = .medium
    configuration?.imagePadding = 8
    configuration?.image = UIImage(systemName: "applelogo")
    backgroundColor = .black
    tintColor = .white
    setTitle("Sign in With Apple", for: [])
    layer.cornerRadius = 8
    clipsToBounds = true
  }
}
