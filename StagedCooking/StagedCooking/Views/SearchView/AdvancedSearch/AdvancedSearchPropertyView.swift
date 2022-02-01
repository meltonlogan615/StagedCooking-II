//
//  AdvancedSearchPropertyView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/29/22.
//

import Foundation

import Foundation
import UIKit

class AdvancedSearchPropertyView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 200, height: 200)
  }
}

extension AdvancedSearchPropertyView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    
  }
}
