//
//  SearchedHistoryViewController.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/17/22.
//
import UIKit

class SearchHistoryViewController: UITableViewController {
  
  let myHistory = ChefDefault()
  
  var searched = String()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    ChefDefault.loadData()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "historyCell")
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Search", style: .plain, target: self, action: #selector(dismissView))
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editList))

    self.title = "Search History"
    
    self.isAccessibilityElement = true
    self.accessibilityLabel = "Searhc History"
    
    style()
    layout()
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ChefDefault.searchHistory.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)
    var config = cell.defaultContentConfiguration()
    let text = ChefDefault.searchHistory[indexPath.row]
    config.text = text
    cell.contentConfiguration = config
    
    cell.isAccessibilityElement = true
    cell.accessibilityLabel = text
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    searchFromHistoryList(searched: ChefDefault.searchHistory[indexPath.row])
  }
  
}

extension SearchHistoryViewController {
  
  func style() {
  }
  
  func layout() {
    
  }
}

extension SearchHistoryViewController {
  private func searchFromHistoryList(searched: String) {
    let listVC = RecipeListTableViewController()
    listVC.searchedRecipe = searched
    if let query = searched.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
      ChefDefault.searched = query
    }
    listVC.leftBarButtonText = "History"
    let navigationController = UINavigationController(rootViewController: listVC)
    navigationController.modalPresentationStyle = .fullScreen
    navigationController.modalTransitionStyle = .coverVertical
    present(navigationController, animated: true)
  }
}
