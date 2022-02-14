//
//  AttributedString-Extension.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/7/21.
//

import Foundation

extension String {
  func htmlAttributedString() -> NSAttributedString? {
    guard let data = self.data(using: .utf8) else  { return nil }
    
    return try? NSAttributedString(data: data,
                                   options: [.documentType: NSAttributedString.DocumentType.html],
                                   documentAttributes: nil)
  }
}
