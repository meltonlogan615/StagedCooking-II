//
//  TestTableViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import UIKit

class TestTableViewController: UIViewController {
  
  let testTable = UITableView()
  var action = UIContextualAction()
  
  
  let testObject = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Food", "Farts", "Football", "Frank Zappa"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpTable()
    testTable.dataSource = self
    testTable.delegate = self
    testTable.register(CellForTableView.self, forCellReuseIdentifier: "testCell")
  }
}

extension TestTableViewController {
  func setUpTable() {
    testTable.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(testTable)
    NSLayoutConstraint.activate([
      testTable.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
      testTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      view.safeAreaLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: testTable.bottomAnchor, multiplier: 1),
      testTable.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    ])
  }
}


extension TestTableViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return testObject.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = testTable.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! CellForTableView
    cell.image.image = UIImage(named: "steak")
    cell.titleLabel.text = testObject[indexPath.row]
    cell.dietLabel.text = testObject[indexPath.row]
    cell.typeImage.image = UIImage(systemName: "appletv")
    cell.accessoryType = .disclosureIndicator
    return cell
  }
  
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    let footerView = UIView()
    footerView.backgroundColor = view.backgroundColor
    footerView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 80)

    let button = UIButton(type: .system)
    button.frame = CGRect(x: 0, y: 0, width: footerView.frame.width, height: 50)
    button.setTitle("Load More Recipes", for: .normal)
    button.accessibilityLabel = "Load more Recipes"
    button.setTitleColor(.blue, for: [])
    button.isUserInteractionEnabled = true
    button.addTarget(self, action: #selector(poop), for: .primaryActionTriggered)
    footerView.addSubview(button)
    return footerView
//
//    let footerView = UIView()
//    footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 56)
//    footerView.backgroundColor = .yellow
//    let button = ActionButton()
//    button.frame = CGRect(x: 0, y: 0, width: footerView.frame.width, height: 48)
//    button.setTitle("Load More", for: [])
//    button.backgroundColor = .systemOrange
//    button.tintColor = .systemBackground
//    button.isUserInteractionEnabled = true
//    button.addTarget(self, action: #selector(poop), for: .primaryActionTriggered)
//    footerView.addSubview(button)
//    return footerView
  }
}

extension TestTableViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
  
  func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    action = UIContextualAction(style: .normal, title: "Save") {_,_,_ in
      print("Leading Swipe")
    }
    action.image = UIImage(systemName: "star")
    action.backgroundColor = .orange
    return UISwipeActionsConfiguration(actions: [action])
  }
  
  
  // From Trailing to Leading
  func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    action = UIContextualAction(style: .normal, title: "Favorite") {_,_,_ in
      print("Trailing Swipe")
    }
    action.image = UIImage(systemName: "heart")
    action.backgroundColor = .blue
    return UISwipeActionsConfiguration(actions: [action])
  }

}

extension TestTableViewController {
  @objc func poop() {
    print("poop")
  }
}
