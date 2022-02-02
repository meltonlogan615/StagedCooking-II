//
//  IngredientInformation-Notes.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/31/22.
//

import Foundation

struct BigIngredientInfo {
  var id: Int?
  var original: String?
  var originalName: String?
  var name: String?
  var nameClean: String?
  var amount: Double?
  var unit: String?
  var unitShort: String?
  var unitLong: String?
  var possibleUnits: [String]?
  var estimatedCost: EstimatedCost?
  var consistency: String?
  var shoppingListUnits: [String]?
  var aisle: String? // not entirely sure of this type, may be [String]?
  var image: String?
  var meta: [String]? // not entirely sure of this type
  var nutrition: Nutrition?
}

struct EstimatedCost {
  var value: Double?
  var unit: String?
}
struct Nutrition {
  var nutrients: [Nutrient]
}
struct Nutrient {
  var name: String?
  var amount: Double?
  var unit: String?
  var percentOfDailyNeeds: Double?
}
/*
   {
   "id": 9266,
   "original": "pineapples",
   "originalName": "pineapples",
   "name": "pineapples",
   "nameClean": "pineapple",
   "amount": 1.0,
   "unit": "",
   "unitShort": "",
   "unitLong": "",
   "possibleUnits": [
       "piece",
       "slice",
       "fruit",
       "g",
       "oz",
       "cup",
       "serving"
   ],
   "estimatedCost": {
     "value": 299.0,
     "unit": "US Cents"
   },
   "consistency": "solid",
   "shoppingListUnits": ["pieces"],
   "aisle": "Produce",
   "image": "pineapple.jpg",
   "meta": [],
   "nutrition": {
     "nutrients": [
       {
         "name": "Calories",
         "amount": 452.5,
         "unit": "cal",
         "percentOfDailyNeeds": 22.63
       },
     {
       "name": "Fat",
       "amount": 1.09,
       "unit": "g",
       "percentOfDailyNeeds": 1.67
     },
     {
       "name": "Saturated Fat",
       "amount": 0.08,
       "unit": "g",
       "percentOfDailyNeeds": 0.51
     },
     {
       "name": "Carbohydrates",
       "amount": 118.74,
       "unit": "g",
       "percentOfDailyNeeds": 39.58
     },
     {
       "name": "Net Carbohydrates",
       "amount": 106.07,
       "unit": "g",
       "percentOfDailyNeeds": 38.57
     },
     {
       "name": "Sugar",
       "amount": 89.14,
       "unit": "g",
       "percentOfDailyNeeds": 99.05
     },
     {
       "name": "Cholesterol",
       "amount": 0.0,
       "unit": "mg",
       "percentOfDailyNeeds": 0.0
     },
     {
       "name": "Sodium",
       "amount": 9.05,
       "unit": "mg",
       "percentOfDailyNeeds": 0.39
     },
   
   "properties": [
   {
     "name": "Glycemic Index",
     "amount": 58.67,
     "unit": ""
   },
   {
     "name": "Glycemic Load",
     "amount": 62.23,
     "unit": ""
   }
   ],
   "caloricBreakdown": {
     "percentProtein": 3.88,
     "percentFat": 1.94,
     "percentCarbs": 94.18
   },
   "weightPerServing": {
     "amount": 905,
     "unit": "g"
   }
   },
    "categoryPath": ["tropical fruit", "fruit"]
   }
 */
