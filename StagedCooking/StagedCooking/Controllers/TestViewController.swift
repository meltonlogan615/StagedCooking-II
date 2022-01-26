//
//  TestView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//

import Foundation
import UIKit

class TestViewController: UIViewController {
  
  let testView = AdvancedSearchMinMax()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .lightGray
    style()
    layout()
  }
  
  
}

extension TestViewController {
  
  func style() {
    testView.translatesAutoresizingMaskIntoConstraints = false
//    testView.backgroundColor = .orange
  }
  
  func layout() {
    view.addSubview(testView)
    NSLayoutConstraint.activate([
      testView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      
      testView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.trailingAnchor.constraint(equalToSystemSpacingAfter: testView.trailingAnchor, multiplier: 1),
      testView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1)
    ])
  }
}

