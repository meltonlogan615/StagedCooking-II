//
//  StagedCardView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/18/22.
//

import Foundation

import UIKit

class StagedCardViewController: UIViewController {
  
  let stagedCard = StagedCardView()
  let ingredientLine = IngredientLineView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
  init(recipeName: String, cardCounter: Int, ingredientValues: Int, ingredientUnit: String, ingredients: String) {
    stagedCard.cardNumberLabel.text = "\(recipeName) Stage \(cardCounter)"
    ingredientLine.amountValueLabel.text = "\(ingredientValues)"
    ingredientLine.amountUnitLabel.text = ingredientUnit
    ingredientLine.ingredientLabel.text = ingredients
    super.init(nibName: nil, bundle: nil)
  }
  

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


extension StagedCardViewController {
  
  func style() {
    view.backgroundColor = .lightGray

    stagedCard.translatesAutoresizingMaskIntoConstraints = false
    stagedCard.layer.borderWidth = 2
    stagedCard.layer.borderColor = UIColor(named: "black")?.cgColor
  }
  
  func layout() {
    view.addSubview(stagedCard)
    NSLayoutConstraint.activate([
      stagedCard.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 16),
      stagedCard.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: stagedCard.trailingAnchor, multiplier: 4),
      stagedCard.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 4)
    ])
  }
}

