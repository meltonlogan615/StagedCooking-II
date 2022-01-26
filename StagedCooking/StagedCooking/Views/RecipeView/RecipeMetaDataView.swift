//
//  IngredientsView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//

import Foundation
import UIKit

class RecipeMetaDataView: UIView {
  
  let ingredientsStack = UIStackView()
  
  // for initial setup purposes
  let servingsLabel = UILabel()
  let cheapLabel = UILabel()
  let readyInMinutesLabel = UILabel()
  let vegetarianLabel = UILabel()
  let veganLabel = UILabel()
  let diaryFreeLabel = UILabel()
  
  let summaryLabel = UILabel()
  var summary = UILabel()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    //    backgroundColor = .green
    //    alpha = 0.5
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension RecipeMetaDataView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    ingredientsStack.translatesAutoresizingMaskIntoConstraints = false
    ingredientsStack.axis = .vertical
    ingredientsStack.spacing = 2
    ingredientsStack.distribution = .equalSpacing
    
    servingsLabel.translatesAutoresizingMaskIntoConstraints = false
    
    cheapLabel.translatesAutoresizingMaskIntoConstraints = false
    
    readyInMinutesLabel.translatesAutoresizingMaskIntoConstraints = false
    
    vegetarianLabel.translatesAutoresizingMaskIntoConstraints = false
    
    veganLabel.translatesAutoresizingMaskIntoConstraints = false
    
    diaryFreeLabel.translatesAutoresizingMaskIntoConstraints = false

    
    summaryLabel.translatesAutoresizingMaskIntoConstraints = false
    summaryLabel.font = UIFont.systemFont(ofSize: 24)
    summaryLabel.text = "Summary:"
    
    summary.translatesAutoresizingMaskIntoConstraints = false
    summary.numberOfLines = 0
    summary.textAlignment = .justified
    summary.font = UIFont.systemFont(ofSize: 24)
  }
  
  func layout() {
    ingredientsStack.addArrangedSubview(servingsLabel)
    ingredientsStack.addArrangedSubview(cheapLabel)
    ingredientsStack.addArrangedSubview(readyInMinutesLabel)
    ingredientsStack.addArrangedSubview(vegetarianLabel)
    ingredientsStack.addArrangedSubview(veganLabel)
    ingredientsStack.addArrangedSubview(diaryFreeLabel)
    ingredientsStack.addArrangedSubview(summaryLabel)
    ingredientsStack.addArrangedSubview(summary)
    
    addSubview(ingredientsStack)
    NSLayoutConstraint.activate([
      ingredientsStack.widthAnchor.constraint(equalTo: widthAnchor),
      ingredientsStack.centerXAnchor.constraint(equalTo: centerXAnchor)
      //      ingredientsStack.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1)
      //      trailingAnchor.constraint(equalToSystemSpacingAfter: ingredientsStack.trailingAnchor, multiplier: 1),
      //      ingredientsStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1)
    ])
  }
}

