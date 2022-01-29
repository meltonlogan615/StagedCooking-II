//
//  TestTableViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/26/22.
//

import UIKit

class TestTableViewController: UIViewController {
  
  let testTable = UITableView()
  
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
    cell.typeImage.image = UIImage(named: "appletv")
    return cell
  }
}

extension TestTableViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
}

