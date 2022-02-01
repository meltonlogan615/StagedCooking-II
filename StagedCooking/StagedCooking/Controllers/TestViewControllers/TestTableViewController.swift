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
  
  
  let testObject = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
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

