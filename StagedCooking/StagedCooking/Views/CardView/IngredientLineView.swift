//
//  IngredientLineView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/19/22.
//

import Foundation
import UIKit

class IngredientLineView: UIView {
  
  let ingredientStack = UIStackView()
  let amountValueLabel = UILabel()
  let amountUnitLabel = UILabel()
  let seperator = UILabel()
  let ingredientLabel = UILabel()
  
  let testText = DummyData()
  
  var amountUnit: String?
  var amountValue: String?
  var ingredientName: String?
  var recipeName: String?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    style()
    layout()
  }
  
  convenience init(recipeName: String?, amountValue: String?, amountUnit: String?, ingredientName: String?) {
    self.init()
    self.recipeName = recipeName
    self.amountValue = amountValue
    self.amountUnit = amountUnit
    self.ingredientName = ingredientName
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension IngredientLineView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    ingredientStack.translatesAutoresizingMaskIntoConstraints = false
    ingredientStack.axis = .horizontal
    ingredientStack.spacing = 8
    ingredientStack.distribution = .fillProportionally
    
    amountValueLabel.translatesAutoresizingMaskIntoConstraints = false
    amountValueLabel.textAlignment = .right
    amountValueLabel.font = .systemFont(ofSize: 24)
    
    amountUnitLabel.translatesAutoresizingMaskIntoConstraints = false
    amountUnitLabel.textAlignment = .natural
    amountUnitLabel.font = .systemFont(ofSize: 24)
    
    ingredientLabel.translatesAutoresizingMaskIntoConstraints = false
    ingredientLabel.textAlignment = .natural
    ingredientLabel.font = .systemFont(ofSize: 24)
  }
  
  func layout() {
    ingredientStack.addArrangedSubview(amountValueLabel)
    
    ingredientStack.addArrangedSubview(amountUnitLabel)
    
    ingredientStack.addArrangedSubview(ingredientLabel)
    
    addSubview(ingredientStack)
  }
}
