//
//  StagedCardView.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/21/21.
//

import Foundation
import UIKit

class StagedCardView: UIView {
  
  let cardStackView = UIStackView()
  let cardNumberLabel = UILabel()
  let ingredientLine = IngredientLineView()
  
//  var recipeName = String()
//  var cardCounter = Int()
//  var ingredientValues = [Int]()
//  var ingredientUnit = String()
//  var ingredient = String()
//  var ingredients = [Ingredient]()
  
  let recipeName = "Bacon"
  let cardCounter = 1
  let ingredientValues = [1, 2, 3, 4]
  let ingredientUnit = "cups"
  let ingredients = ["flour", "milk", "oranges", "rice"]
  
  let stepLabel = UILabel()
  let testText = DummyData()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.isAccessibilityElement = true
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension StagedCardView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    backgroundColor = .white
    
    cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
    cardNumberLabel.font = .preferredFont(forTextStyle: .title1)
    let text = "\(recipeName) Stage \(cardCounter)"
    cardNumberLabel.text = text
    cardNumberLabel.textAlignment = .center
    cardNumberLabel.isAccessibilityElement = true
    cardNumberLabel.accessibilityLabel = text
    
    cardStackView.translatesAutoresizingMaskIntoConstraints = false
    cardStackView.axis = .vertical
    cardStackView.distribution = .fillProportionally
    cardStackView.spacing = 36

    stepLabel.translatesAutoresizingMaskIntoConstraints = false
    stepLabel.numberOfLines = 0
    stepLabel.text = testText.directions
    stepLabel.font = .systemFont(ofSize: 24)
    
    ingredientLine.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    addSubview(cardNumberLabel)
    NSLayoutConstraint.activate([
      cardNumberLabel.widthAnchor.constraint(equalTo: widthAnchor),
      cardNumberLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
      cardNumberLabel.heightAnchor.constraint(equalToConstant: 40)
    ])
    
    // TODO: - Replace defined Loop with results of network call
    for i in 0 ... 2 {
      let ingredientLine = IngredientLineView()
      ingredientLine.translatesAutoresizingMaskIntoConstraints = false
      ingredientLine.isAccessibilityElement = true
      cardStackView.addArrangedSubview(ingredientLine)
      let valueText = "\(self.ingredientValues[i])", unitText = "\(self.ingredientUnit)", ingredientText = "\(self.ingredients[i])"
      
      ingredientLine.amountValueLabel.text = valueText
      ingredientLine.amountValueLabel.isAccessibilityElement = true
      ingredientLine.amountValueLabel.accessibilityLabel = valueText
      
      ingredientLine.amountUnitLabel.text = unitText
      ingredientLine.amountUnitLabel.isAccessibilityElement = true
      ingredientLine.amountUnitLabel.accessibilityLabel = unitText
      
      ingredientLine.ingredientLabel.text = ingredientText
      ingredientLine.ingredientLabel.isAccessibilityElement = true
      ingredientLine.ingredientLabel.accessibilityLabel = ingredientText
    }
    
    cardStackView.addArrangedSubview(stepLabel)
    
    addSubview(cardStackView)
    NSLayoutConstraint.activate([
      cardStackView.topAnchor.constraint(equalToSystemSpacingBelow: cardNumberLabel.bottomAnchor, multiplier: 4),
      trailingAnchor.constraint(equalToSystemSpacingAfter: cardStackView.trailingAnchor, multiplier: 2),
      cardStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
      cardStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
      cardStackView.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
  }
}
