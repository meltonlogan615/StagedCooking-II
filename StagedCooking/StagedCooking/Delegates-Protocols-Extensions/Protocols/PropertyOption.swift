//
//  PropertyOption.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/7/21.
//

import Foundation

public protocol PropertyOption {
  var code: Int { get }
  var label: String { get }
  var value: (code: Int, label: String) { get }
}
