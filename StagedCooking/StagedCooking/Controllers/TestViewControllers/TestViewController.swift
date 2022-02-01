//
//  TestView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//

import Foundation
import UIKit

class TestViewController: UIViewController {
  
  let testView = AdvancedSearchOptionView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
    view.backgroundColor = .black
  }
}

extension TestViewController {
  
  func style() {
    testView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    view.addSubview(testView)
    NSLayoutConstraint.activate([      
      testView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: testView.trailingAnchor, multiplier: 1),
      testView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1)
    ])
  }
}

