//
//  CellForTableView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import Foundation
import UIKit

class CellForTableView: UITableViewCell {
  
  var image: UIImageView = {
    let image = UIImageView()
    image.translatesAutoresizingMaskIntoConstraints = false
    image.backgroundColor = .clear
    image.contentMode = .scaleAspectFit
    image.layer.cornerRadius = 8
    image.clipsToBounds = true
    return image
  }()
  
  var titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    label.font = UIFont.preferredFont(forTextStyle: .headline)
    return label
  }()
  
  var dietLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.numberOfLines = 1
    label.lineBreakMode = .byTruncatingTail
    label.font = UIFont.preferredFont(forTextStyle: .subheadline)
    label.tintColor = .tertiaryLabel
    return label
  }()
  
  var typeImage: UIImageView = {
    let typeImage = UIImageView()
    typeImage.translatesAutoresizingMaskIntoConstraints = false
    typeImage.tintColor = .black
    return typeImage
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.isAccessibilityElement = true
    
// MARK: - Adding to Cell
    self.contentView.addSubview(image)
    self.contentView.addSubview(titleLabel)
    self.contentView.addSubview(dietLabel)
    self.contentView.addSubview(typeImage)
    
// MARK: - Setting Constraints
    
    NSLayoutConstraint.activate([
      image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      image.widthAnchor.constraint(equalToConstant: 80),
      image.leadingAnchor.constraint(equalToSystemSpacingAfter: contentView.leadingAnchor, multiplier: 2),
    
    ])
    NSLayoutConstraint.activate([
      titleLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
      titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: image.trailingAnchor, multiplier: 2),
//      contentView.trailingAnchor.constraint(equalToSystemSpacingAfter: titleLabel.trailingAnchor, multiplier: 2)
    ])
    
    NSLayoutConstraint.activate([
      dietLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
      dietLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
      
    ])
    
    NSLayoutConstraint.activate([
      typeImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
      contentView.trailingAnchor.constraint(equalToSystemSpacingAfter: typeImage.trailingAnchor, multiplier: 2),
      typeImage.leadingAnchor.constraint(equalToSystemSpacingAfter: titleLabel.trailingAnchor, multiplier: 1)
    ])
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

