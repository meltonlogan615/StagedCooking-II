//
//  AdvancedSearchOptionView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation
import UIKit

class AdvancedSearchOptionView: UIView {
    
  let image = UIImageView()
  let filterLabel = UILabel()
  let filterAccessory = UIImageView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
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
    backgroundColor = .red
    
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "steak")
    image.contentMode = .scaleAspectFit
    

    filterLabel.translatesAutoresizingMaskIntoConstraints = false
    filterLabel.text = "Filter Stuff"
    
    filterAccessory.translatesAutoresizingMaskIntoConstraints = false
    filterAccessory.image = UIImage(systemName: "plus.circle")
    filterAccessory.contentMode = .scaleAspectFit
    filterAccessory.tintColor = .black
  }
  
  func layout() {
    addSubview(image)
    image.image = UIImage(named: "steak")
    
    addSubview(filterLabel)
    
    addSubview(filterAccessory)
    
    NSLayoutConstraint.activate([
      image.widthAnchor.constraint(equalToConstant: 42),
      image.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
      bottomAnchor.constraint(equalToSystemSpacingBelow: image.bottomAnchor, multiplier: 1),
      image.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
    
    NSLayoutConstraint.activate([
      filterLabel.topAnchor.constraint(equalTo: image.topAnchor),
      filterLabel.bottomAnchor.constraint(equalTo: image.bottomAnchor),
      filterLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: image.trailingAnchor, multiplier: 2)
    ])
    
    NSLayoutConstraint.activate([
      filterAccessory.widthAnchor.constraint(equalToConstant: 24),
      filterAccessory.topAnchor.constraint(equalTo: image.topAnchor),
      trailingAnchor.constraint(equalToSystemSpacingAfter: filterAccessory.trailingAnchor, multiplier: 1),
      filterAccessory.bottomAnchor.constraint(equalTo: image.bottomAnchor),
      filterAccessory.leadingAnchor.constraint(equalToSystemSpacingAfter: filterLabel.trailingAnchor, multiplier: 1)
    ])
    
  }
}
