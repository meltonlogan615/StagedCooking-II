//
//  StagedCardContainerViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/18/22.
//



import Foundation
import UIKit

class StagedCardContainerViewController: UIViewController {
  
  let pageViewController: UIPageViewController
  var cards = [UIViewController]()
  var currentVC: UIViewController
  
  var recipe = Recipe()
  
  
  var ingredientsTest = [Ingredient]()
  let recipeName = "Bacon"
  let cardCounter = 1
  let ingredientValues = [1, 2, 3, 4]
  let ingredientUnit = "cups"
  let ingredients = ["flour", "milk", "oranges", "rice"]
  
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    
    let card1 = StagedCardViewController(recipeName: recipeName, cardCounter: cardCounter, ingredientValues: ingredientValues[0], ingredientUnit: ingredientUnit, ingredients: ingredients[0])
    let card2 = StagedCardViewController(recipeName: recipeName, cardCounter: cardCounter + 1, ingredientValues: ingredientValues[1], ingredientUnit: ingredientUnit, ingredients: ingredients[1])
    let card3 = StagedCardViewController(recipeName: recipeName, cardCounter: cardCounter + 2, ingredientValues: ingredientValues[2], ingredientUnit: ingredientUnit, ingredients: ingredients[2])
    if recipe.cookingMinutes != nil {
      let card4 = StagedTimerViewController()
      cards.append(card4)
    }
    
    cards.append(card1)
    cards.append(card2)
    cards.append(card3)
    
    currentVC = cards.first!
    
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUp()
  }
}

extension StagedCardContainerViewController {
  private func setUp() {
    view.backgroundColor = .lightGray

    // Life Cycle, adding child VCs, all lines required
    addChild(pageViewController)
    view.addSubview(pageViewController.view)
    pageViewController.didMove(toParent: self)
    
    pageViewController.dataSource = self
    pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      view.topAnchor.constraint(equalTo: pageViewController.view.topAnchor),
      view.leadingAnchor.constraint(equalTo: pageViewController.view.leadingAnchor),
      view.trailingAnchor.constraint(equalTo: pageViewController.view.trailingAnchor),
      view.bottomAnchor.constraint(equalTo: pageViewController.view.bottomAnchor),
    ])
    
    pageViewController.setViewControllers([cards.first!], direction: .forward, animated: false, completion: nil)
    currentVC = cards.first!
  }
}


// MARK: - UIPageViewControllerDataSource
extension StagedCardContainerViewController: UIPageViewControllerDataSource {
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    return getPreviousViewController(from: viewController)
  }
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    return getNextViewController(from: viewController)
  }
  
  private func getPreviousViewController(from viewController: UIViewController) -> UIViewController? {
    guard let index = cards.firstIndex(of: viewController), index - 1 >= 0 else { return nil }
    currentVC = cards[index - 1]
    return cards[index - 1]
  }
  
  private func getNextViewController(from viewController: UIViewController) -> UIViewController? {
    guard let index = cards.firstIndex(of: viewController), index + 1 < cards.count else { return nil }
    currentVC = cards[index + 1]
    return cards[index + 1]
  }
  
  func presentationCount(for pageViewController: UIPageViewController) -> Int {
    return cards.count
  }
  
  func presentationIndex(for pageViewController: UIPageViewController) -> Int {
    return cards.firstIndex(of: self.currentVC) ?? 0
  }
}

// MARK: - Actions



