//
//  StagedTimerView.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/20/22.
//

import Foundation
import UIKit

class StagedTimerView: UIView {
  
//  let timerStack = UIStackView()
  let timerLabel = UILabel()
//  let buttonStack = UIStackView()
  let cancelButton = UIButton(type: .system)
  let startButton = UIButton(type: .system)
  let pauseButton = UIButton(type: .system)
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.isAccessibilityElement = true
    self.accessibilityLabel = "Timer"
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension StagedTimerView {
  
  func style() {
    translatesAutoresizingMaskIntoConstraints = false
    
//    timerStack.translatesAutoresizingMaskIntoConstraints = false
//    timerStack.axis = .vertical
//    timerStack.distribution = .fillEqually
//    backgroundColor = .lightGray
    
    timerLabel.translatesAutoresizingMaskIntoConstraints = false
    timerLabel.text = "00:00:00"
    timerLabel.font = .systemFont(ofSize: 72, weight: .light)
    timerLabel.textAlignment = .center
    
//    buttonStack.translatesAutoresizingMaskIntoConstraints = false
//    buttonStack.axis = .horizontal
//    buttonStack.distribution = .equalSpacing
//    buttonStack.backgroundColor = .darkGray
    
    cancelButton.translatesAutoresizingMaskIntoConstraints = false
    cancelButton.setTitle("Cancel", for: [])
    cancelButton.center = CGPoint(x: 0.5, y: 0.5)
    cancelButton.isAccessibilityElement = true
    cancelButton.accessibilityLabel = "Cancel"

    startButton.translatesAutoresizingMaskIntoConstraints = false
    startButton.setTitle("Start", for: [])
    startButton.isHidden = false
    startButton.center = CGPoint(x: 0.5, y: 0.5)
    startButton.isAccessibilityElement = true
    startButton.accessibilityLabel = "Start"
    
    pauseButton.translatesAutoresizingMaskIntoConstraints = false
    pauseButton.setTitle("Pause", for: [])
    pauseButton.isHidden = true
    pauseButton.isAccessibilityElement = true
    pauseButton.accessibilityLabel = "Pause"

  }
  
  func layout() {
    addSubview(timerLabel)
    NSLayoutConstraint.activate([
      timerLabel.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 16),
      timerLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor),
    ])
    
    addSubview(cancelButton)
    NSLayoutConstraint.activate([
      cancelButton.topAnchor.constraint(equalToSystemSpacingBelow: timerLabel.bottomAnchor, multiplier: 24),
      cancelButton.leadingAnchor.constraint(equalToSystemSpacingAfter: safeAreaLayoutGuide.leadingAnchor, multiplier: 6),
    ])
    
    addSubview(startButton)
    NSLayoutConstraint.activate([
      startButton.topAnchor.constraint(equalTo: cancelButton.topAnchor),
      safeAreaLayoutGuide.trailingAnchor.constraint(equalToSystemSpacingAfter: startButton.trailingAnchor, multiplier: 6)
    ])
    
    addSubview(pauseButton)
    NSLayoutConstraint.activate([
      pauseButton.topAnchor.constraint(equalTo: cancelButton.topAnchor),
      pauseButton.trailingAnchor.constraint(equalTo: startButton.trailingAnchor),
    ])
    
    
    // Using Stacks on everything
//    buttonStack.addArrangedSubview(pauseButton)
//    buttonStack.addArrangedSubview(startButton)
//
//    buttonStack.addArrangedSubview(cancelButton)
//    NSLayoutConstraint.activate([
//      buttonStack.heightAnchor.constraint(equalToConstant: CGFloat(timerStack.frame.height / 2)),
////      buttonStack.widthAnchor.constraint(equalTo: widthAnchor),
//    ])
//    timerStack.addArrangedSubview(buttonStack)
//
//    timerStack.addArrangedSubview(timerLabel)
//    NSLayoutConstraint.activate([
//      timerLabel.topAnchor.constraint(equalToSystemSpacingBelow: timerStack.topAnchor, multiplier: 4)
//    ])
//
//    addSubview(timerStack)
//    NSLayoutConstraint.activate([
//      timerStack.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 4),
//    ])
  }
}


