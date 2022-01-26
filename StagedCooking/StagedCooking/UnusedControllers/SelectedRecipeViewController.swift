////
////  SelectedRecipeViewController.swift
////  StagedCooking
////
////  Created by Logan Melton on 11/21/21.
////
//
//import UIKit
//
//// TODO: - Setup as UIScrollView. Button will need to remain at the bottom of the screen.
//
//class SelectedRecipeViewController: UIViewController {
//
//  let dataprovider = DataProvider()
//
////  let recipe = SearchedTerm.selectedRecipe
//  var recipe = Recipe()
//  var recipeID = 0
//  var recipeTitle = ""
//
//  private lazy var scrollView: UIScrollView = {
//    let scrollView = UIScrollView()
//    scrollView.translatesAutoresizingMaskIntoConstraints = false
//    return scrollView
//  }()
//
//  private lazy var contentView: UIView = {
//    let contentView = UIView()
//    contentView.translatesAutoresizingMaskIntoConstraints = false
//    return contentView
//  }()
//
//  private lazy var stackView: UIStackView = {
//    let stack = UIStackView()
//    stack.axis = .vertical
//    stack.alignment = .center
//    stack.spacing = 16
//    stack.translatesAutoresizingMaskIntoConstraints = false
//    return stack
//  }()
//
//  private var image: UIImageView = {
//    let image = UIImageView()
//    image.image = UIImage(named: "")
//    image.center = CGPoint(x: 0.5, y: 0.5)
//    image.translatesAutoresizingMaskIntoConstraints = false
//    return image
//  }()
//
//
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    print("ViewDidLoad", String(describing: recipe))
//
//    view.backgroundColor = .systemBackground
//
//    // Layout Testing with colors
////    scrollView.backgroundColor = .cyan
//    contentView.backgroundColor = .green
//    stackView.backgroundColor = .red
//
//
//// MARK: - Navigation Items:
//    title = recipeTitle
//    navigationController?.toolbar.tintColor = .systemFill
//    navigationController?.toolbar.backgroundColor = .systemBackground
//
//// MARK: - View Confirguations
//    configureSubviews()
//    setupConstraints()
//  }
//
//  private func configureSubviews() {
//    view.addSubview(scrollView)
//    contentView.addSubview(stackView)
//    scrollView.addSubview(contentView)
//
//// MARK: - Main Image
//    guard let mainImage = recipe.image else { return }
//    guard let imageURL = URL(string: mainImage) else { return }
//    image.loadImage(url: imageURL)
//    image.image = UIImage(named: mainImage)
//    image.contentMode = .scaleToFill
//    image.layer.masksToBounds = false
//    image.layer.cornerRadius = 50
//    image.clipsToBounds = true
//    stackView.addArrangedSubview(image)
//
//// MARK: - Stack & Stack Items Items
//
//    if let words = recipe.title {
//      let label = UILabel()
//      label.text = words
//      stackView.addArrangedSubview(label)
//    }
//
//    if let summary = recipe.summary {
//      let summaryLabel = UILabel()
//      summaryLabel.text = summary
//      summaryLabel.numberOfLines = 0
//      print(summaryLabel)
//      stackView.addArrangedSubview(summaryLabel)
//    }
//
//    guard let ingredients = recipe.extendedIngredients else { return }
//    for ingredient in 0 ..< ingredients.count  {
//      print(ingredient)
//      let label = UILabel()
//      guard let labelText = ingredients[ingredient].name else { return }
//      print(labelText)
//      label.text = labelText
//      label.numberOfLines = 0
//      label.tintColor = .darkText
//      label.font = UIFont.systemFont(ofSize: 20)
//      stackView.addArrangedSubview(label)
//    }
//  }
//
//// MARK: Layout Constraints
//  private func setupConstraints() {
//
//    // ScrollView
//    NSLayoutConstraint.activate([
//      scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//      scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//      scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//      scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
//    ])
//
//    // ContentView
//    NSLayoutConstraint.activate([
//      contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//      contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//      contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//      contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//      contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
//    ])
//
//    // StackView
//    NSLayoutConstraint.activate([
//      stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
//      stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//      stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//      stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
//    ])
//
//    NSLayoutConstraint.activate([
//      image.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 20),
//      image.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -50),
//      image.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 50)
//    ])
//
//    // Labels
//    for item in stackView.arrangedSubviews {
//      let widthConstant = CGFloat(view.frame.width - 40)
//      NSLayoutConstraint.activate([
//        item.widthAnchor.constraint(equalToConstant: widthConstant),
//      ])
//    }
//  }
//
//}
//
//
