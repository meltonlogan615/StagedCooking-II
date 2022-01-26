//
//  AdvancedSearchViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/23/22.
//

import UIKit

class AdvancedSearchViewController: UIViewController {
  
  let testData = DummyData()
  
//  let advancedSearchTitleLabel = UILabel()
  let advancedSearchDirections = UILabel()
  let advancedSearch = AdvancedSearchView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Advanced Search"
    view.backgroundColor = .systemBackground
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dismissView))
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addParameter))
    style()
    layout()
  }
  
  
}

extension AdvancedSearchViewController {
  
  func style() {
//    advancedSearchTitleLabel.translatesAutoresizingMaskIntoConstraints = false
//    advancedSearchTitleLabel.textAlignment = .center
//    advancedSearchTitleLabel.font = .preferredFont(forTextStyle: .title1)
//    advancedSearchTitleLabel.text = "Advanced Search"
    
    advancedSearchDirections.translatesAutoresizingMaskIntoConstraints = false
    advancedSearchDirections.numberOfLines = 0
    advancedSearchDirections.text = testData.directions
    
    advancedSearch.translatesAutoresizingMaskIntoConstraints = false
    
  }
  
  func layout() {
//    view.addSubview(advancedSearchTitleLabel)
//    NSLayoutConstraint.activate([
//      advancedSearchTitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2),
//      advancedSearchTitleLabel.widthAnchor.constraint(equalTo: view.widthAnchor)
//    ])
    
    view.addSubview(advancedSearchDirections)
    NSLayoutConstraint.activate([
      advancedSearchDirections.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      advancedSearchDirections.widthAnchor.constraint(equalTo: view.widthAnchor)
    ])
    
    view.addSubview(advancedSearch)
    NSLayoutConstraint.activate([
      advancedSearch.topAnchor.constraint(equalToSystemSpacingBelow: advancedSearchDirections.bottomAnchor, multiplier: 1),
      advancedSearch.widthAnchor.constraint(equalTo: view.widthAnchor)
    ])
  }
}

extension AdvancedSearchViewController {
  @objc func addParameter() {
    
  }
}


