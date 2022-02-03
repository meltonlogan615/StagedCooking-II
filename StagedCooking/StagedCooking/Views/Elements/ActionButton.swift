//
//  ActionButton.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import Foundation
import UIKit

class ActionButton: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.isAccessibilityElement = true
    style()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension ActionButton {
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    configuration = .borderedTinted()
    configuration?.buttonSize = .medium
    configuration?.imagePadding = 8
    layer.cornerRadius = 8
    clipsToBounds = true
  }
}
