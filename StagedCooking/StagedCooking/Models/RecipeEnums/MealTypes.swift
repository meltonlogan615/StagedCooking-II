//
//  MealTypes.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation

enum MealTypes: String, Codable {
  case mainCourse = "Main Course",
    sideDish = "Side Dish",
    dessert = "Dessert",
    appetizer = "Appetizer",
    salad = "Salad",
    bread = "Bread",
    breakfast = "Breakfast",
    soup = "Soup",
    beverage = "Beverage",
    sauce = "Sauce",
    marinade = "Marinade",
    fingerfood = "Finger Food",
    snack = "Snack",
    drink = "Drink"
}
