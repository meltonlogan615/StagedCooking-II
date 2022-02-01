//
//  TestCollectionViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import UIKit

class TestCollectionViewController: UIViewController {
  
  let recipeCollection = UICollectionView()
  
  let testObject = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]

  
  override func viewDidLoad() {
    super.viewDidLoad()
    recipeCollection.dataSource = self
    recipeCollection.delegate = self
    recipeCollection.register(CellForCollectionView.self, forCellWithReuseIdentifier: "collectionCell")
    style()
    layout()
  }
  
  
}

extension TestCollectionViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return testObject.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = recipeCollection.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CellForCollectionView
    
    return cell
  }
  
  
}

extension TestCollectionViewController: UICollectionViewDelegate {
  
}

extension TestCollectionViewController {
  
  func style() {
    recipeCollection.translatesAutoresizingMaskIntoConstraints = false
    
  }
  
  func layout() {
    view.addSubview(recipeCollection)
    NSLayoutConstraint.activate([
      recipeCollection.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      recipeCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: recipeCollection.bottomAnchor, multiplier: 1),
      recipeCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      
      
    ])
    
  }
}
