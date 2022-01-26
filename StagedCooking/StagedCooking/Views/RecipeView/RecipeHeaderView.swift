//
//  RecipeHeaderView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/16/22.
//

import Foundation
import UIKit

class RecipeHeaderView: UIView {
  
  let dataProvider = DataProvider()
  
  let recipe = Recipe()
  let recipeID = Int()
  
  let headerStack = UIStackView()
  let imageView = UIImageView()
  
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

extension RecipeHeaderView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
    headerStack.translatesAutoresizingMaskIntoConstraints = false
    headerStack.axis = .vertical
    headerStack.spacing = 8
    
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit    
  }
  
  func layout() {
    headerStack.addArrangedSubview(imageView)
    addSubview(headerStack)
    
    imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    NSLayoutConstraint.activate([
      headerStack.centerXAnchor.constraint(equalTo: centerXAnchor),
    ])
  }
}
