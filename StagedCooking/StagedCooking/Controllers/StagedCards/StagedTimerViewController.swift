//
//  StagedTimerViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/20/22.
//

import UIKit

class StagedTimerViewController: UIViewController {
  
  let timerView = StagedTimerView()
  let backgroundGuage = CAShapeLayer()
  
  var timer = Timer()
  var recipe = Recipe()

  var frameRect = CGRect()
  
  var totalTime = Float()
  var cookingTime = Int()
//  // -> For later, when calling from network
//  private var cookTime: Float {
//    var totalCookTime = Float()
//    if let cookTime = recipe.cookingMinutes {
//      totalCookTime = Float(cookTime * 60)
//    }
//    return totalCookTime
//  }
  
  // MARK: - Background Animation
  //  private lazy var backgroundGuageAnimation = Animations(object: background)
  //  // Countdown Timer Inits
  //  private lazy var countdownTimer = CountdownTimer(totalTime: timer, timerView.timerLabel: timerLabel, animations: backgroundGuageAnimation)
  private lazy var countdownTimer = CountdownTimer(totalTime: Float(cookingTime), timerLabel: timerView.timerLabel)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //    if let cookTime = recipe.cookingMinutes { -> For later, when calling from network
    //      self.cookTime = Double(cookTime)
    //    }
    frameRect = view.frame
//    cookTime = 1 * 60 / 2
    style()
    layout()
    configureButtonActions()
  }
  
  func startTimer(time: Int) {
    totalTime = Float(time)
    var timeRemaining: Float = 0
    
    timer = Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) {
      timer in
      if timeRemaining < self.totalTime {
        timeRemaining += 0.02
        let tickTock = self.totalTime - timeRemaining
        self.timerView.timerLabel.text = String(format: "%.2f", tickTock)
        
      } else {
        self.timerView.timerLabel.text = "00:00:00\""
        self.endTimer()
      }
    }
  }
  
  func endTimer() {
    let alert = UIAlertController(title: "Timer Complete", message: "", preferredStyle: .alert)
    let closeAlert = UIAlertAction(title: "Dismiss", style: .default)
    alert.addAction(closeAlert)
    let repeatTimer = UIAlertAction(title: "Repeat", style: .default) {_ in
      self.startTimer(time: Int(self.totalTime))
      //      self.animations.pulsate(totalTime: Int(self.totalTime))
      //      self.animations.animate(totalTime: Int(self.totalTime))
    }
    alert.addAction(repeatTimer)
    self.present(alert, animated: true)
    timer.invalidate()
  }
  
}

extension StagedTimerViewController {
  
  func style() {
    timerView.translatesAutoresizingMaskIntoConstraints = false
    
//    let formatter = DateFormatter()
//    formatter.dateFormat = "hh:mm:ss"
  }
  
  func layout() {
    view.addSubview(timerView)
    NSLayoutConstraint.activate([
      timerView.topAnchor.constraint(equalTo: view.topAnchor),
      timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      timerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    ])
  }
}

extension StagedTimerViewController {
  func configureButtonActions() {
    timerView.cancelButton.addTarget(self, action: #selector(cancelButtonPressed), for: .primaryActionTriggered)
    timerView.startButton.addTarget(self, action: #selector(startButtonPressed), for: .primaryActionTriggered)
    timerView.pauseButton.addTarget(self, action: #selector(pauseButtonPressed), for: .primaryActionTriggered)
  }
  
  @objc func cancelButtonPressed() {
    countdownTimer.endTimer()
    print("Cancel")
  }
  
  @objc func startButtonPressed() {
    if let cookTime = recipe.cookingMinutes {
      startTimer(time: cookTime)
      timerView.startButton.isHidden = true
      timerView.pauseButton.isHidden = false
      timerView.timerLabel.text = "00:\(cookTime):00"
      self.endTimer()
      // Add Background Animation Here
    }
  
  }
  
  @objc func pauseButtonPressed() {
    timerView.pauseButton.isHidden = true
    timerView.startButton.isHidden = false
    print("Pause")
  }
}

extension StagedTimerViewController {
  func formatTimer(time: Int) -> String {

    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm:ss"
    if time % 60 == 0 {
      print("poop")
    }
    return "poop"
  }
}

extension StagedCardViewController {

}


