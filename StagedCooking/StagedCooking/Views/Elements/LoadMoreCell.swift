//
//  LoadMoreCell.swift
//  StagedCooking
//
//  Created by Logan Melton on 2/3/22.
//

import Foundation
import UIKit

class LoadMoreCell: UITableViewCell {
  
  let loadMoreButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Load More", for: [])
    return button
  }()
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.contentView.addSubview(loadMoreButton)
    NSLayoutConstraint.activate([
      loadMoreButton.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
      loadMoreButton.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
    ])
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


