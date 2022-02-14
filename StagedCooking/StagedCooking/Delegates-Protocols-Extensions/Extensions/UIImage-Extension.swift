//
//  UIImage-Extension.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/22/21.
//

import Foundation
import UIKit

extension UIImageView {
  
  func loadImage(url: String) {
    guard let url = URL(string: url) else { return }
    DispatchQueue.global().async { [weak self] in
      if let data = try? Data(contentsOf: url) {
        if let image = UIImage(data: data) {
          DispatchQueue.main.async {
            self?.image = image
          }
        }
      }
    }
  }
}

//extension UIImage {
//  func loadImageToVariable(url: String) -> UIImage {
//    var cellImage = UIImage()
//    if let url = URL(string: url) {
//      DispatchQueue.global().async {
//        if let data = try? Data(contentsOf: url) {
//          if let image = UIImage(data: data) {
//            DispatchQueue.main.async {
//              cellImage = image
//            }
//          }
//        }
//      }
//    }
//    return cellImage
//  }
//}

// Source:
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-load-a-remote-image-from-a-url
