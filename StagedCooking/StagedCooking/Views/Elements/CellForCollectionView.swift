//
//  CellForCollectionView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import Foundation
import UIKit

class CellForCollectionView: UICollectionViewCell {
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

extension CellForCollectionView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    
  }
}
