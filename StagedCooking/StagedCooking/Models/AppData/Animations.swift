//
//  Animations.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/20/22.
//

import Foundation
import UIKit

struct Animations {
  var object = CAShapeLayer()
  
  func backgroundAnimation(cookTime: Int) {
    let animation = CABasicAnimation(keyPath: "viewTop")
    animation.toValue = 0
    animation.duration = Double(cookTime)
    animation.isRemovedOnCompletion = false
    animation.fillMode = .forwards
    object.add(animation, forKey: "fillBackground")
  }
  
  func fadeOutLabel() {
    print("poop")
  }
}

