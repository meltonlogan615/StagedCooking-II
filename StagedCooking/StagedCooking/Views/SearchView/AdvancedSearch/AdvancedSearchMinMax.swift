//
//  AdvancedSearchMinMax.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation
import UIKit

class AdvancedSearchMinMax: UIView {
  
  let minMaxStack = UIStackView()

  let minRowStack = UIStackView()
  let minRowParamLabel = UILabel()
  let minRowValueLabel = UILabel()
  let minRowStepper = UIStepper()
  
  let maxRowStack = UIStackView()
  let maxRowParamLabel = UILabel()
  let maxRowValueLabel = UILabel()
  let maxRowStepper = UIStepper()
  
  let dividerView = UIView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension AdvancedSearchMinMax {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    minMaxStack.translatesAutoresizingMaskIntoConstraints = false
    minMaxStack.axis = .vertical
    minMaxStack.spacing = 8
    minMaxStack.backgroundColor = .systemBackground
    
    minRowStack.translatesAutoresizingMaskIntoConstraints = false
    minRowStack.axis = .horizontal
    minRowStack.spacing = 16
    minRowStack.distribution = .fill
    
    minRowParamLabel.translatesAutoresizingMaskIntoConstraints = false
    minRowParamLabel.text = "Something"
    minRowValueLabel.translatesAutoresizingMaskIntoConstraints = false
    minRowValueLabel.text = "16"
  
    minRowStepper.translatesAutoresizingMaskIntoConstraints = false
    
    dividerView.translatesAutoresizingMaskIntoConstraints = false
    dividerView.backgroundColor = .secondarySystemFill

    maxRowStack.translatesAutoresizingMaskIntoConstraints = false
    maxRowStack.axis = .horizontal
    maxRowStack.spacing = 16
    maxRowStack.distribution = .fill
    
    maxRowParamLabel.translatesAutoresizingMaskIntoConstraints = false
    maxRowParamLabel.text = "Nothing"
    maxRowValueLabel.translatesAutoresizingMaskIntoConstraints = false
    maxRowValueLabel.text = "5100"
    
    maxRowStepper.translatesAutoresizingMaskIntoConstraints = false
    
  }
  
  func layout() {
    maxRowStack.addArrangedSubview(maxRowParamLabel)
    maxRowStack.addArrangedSubview(maxRowValueLabel)
    maxRowStack.addArrangedSubview(maxRowStepper)
    
    minRowStack.addArrangedSubview(minRowParamLabel)
    minRowStack.addArrangedSubview(minRowValueLabel)
    minRowStack.addArrangedSubview(minRowStepper)
    
    minMaxStack.addArrangedSubview(minRowStack)
    minMaxStack.addArrangedSubview(dividerView)
    minMaxStack.addArrangedSubview(maxRowStack)
    
    NSLayoutConstraint.activate([
      
    ])
    
    addSubview(minMaxStack)
    NSLayoutConstraint.activate([
      minMaxStack.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 1),
      trailingAnchor.constraint(equalToSystemSpacingAfter: minMaxStack.trailingAnchor, multiplier: 1),
      minMaxStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
    
  }
}
