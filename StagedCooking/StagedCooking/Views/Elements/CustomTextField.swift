//
//  CustomTextField.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension CustomTextField {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    textAlignment = .center
    layer.cornerRadius = 8
    clipsToBounds = true
    backgroundColor = .secondarySystemBackground
    layer.borderWidth = 1
    layer.borderColor = UIColor.secondaryLabel.cgColor
    heightAnchor.constraint(equalToConstant: 32).isActive = true
  }

}
