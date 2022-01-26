//
//  AdvancedSearchOptionView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation
import UIKit

class AdvancedSearchOptionView: UITableView {
  
  let minMaxSearch = AdvancedSearchMinMax()
  
  convenience init(frame: CGRect) {
    self.init(frame: frame)
    
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  

}

extension AdvancedSearchOptionView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    
  }
}
