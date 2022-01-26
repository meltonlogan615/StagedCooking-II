//
//  AdvancedSearchView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/21/22.
//

import Foundation
import UIKit

class AdvancedSearchView: UIView {
  
  let searchStack = UIStackView()
  let searchTextField = UITextField()
  let searchButton = UIButton()
  
  var minMaxProperties: MinMaxNutrients?
  
  let minMaxStepperView = AdvancedSearchMinMax()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension AdvancedSearchView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    searchStack.translatesAutoresizingMaskIntoConstraints = false
    searchStack.axis = .vertical
    searchStack.spacing = 8
    
    searchTextField.translatesAutoresizingMaskIntoConstraints = false
    searchTextField.placeholder = "Search"
    searchTextField.textAlignment = .center
    searchTextField.backgroundColor = .secondarySystemBackground
    searchTextField.font = UIFont.systemFont(ofSize: 20)
    searchTextField.isSecureTextEntry = false
    searchTextField.delegate = self
    searchTextField.layer.cornerRadius = 5
    searchButton.clipsToBounds = true

    
    searchButton.translatesAutoresizingMaskIntoConstraints = false
    searchButton.configuration = .filled()
    searchButton.setTitle("Search", for: [])
  }
  
  func layout() {
    searchStack.addArrangedSubview(searchTextField)
    searchStack.addArrangedSubview(searchButton)
    
    addSubview(searchStack)
    NSLayoutConstraint.activate([
      searchStack.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
      trailingAnchor.constraint(equalToSystemSpacingAfter: searchStack.trailingAnchor, multiplier: 1),
      searchStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
  }
}

extension AdvancedSearchView: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    searchTextField.endEditing(true)
    searchTextField.resignFirstResponder()
    return true
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
  }
}

