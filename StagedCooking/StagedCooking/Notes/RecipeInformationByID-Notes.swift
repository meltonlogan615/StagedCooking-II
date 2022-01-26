//
//  RecipeInformationByID-Notes.swift
//  StagedCooking
//
//  Created by Logan Melton on 12/1/21.
//

import Foundation

// - Get information about a recipe.


// - REQUIRED PARAMETERS -
//    id: Int                 -> Recipe's ID


// - OPTIONAL PARAMETERS -
//    includeNutrition: Bool? -> Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings.


// - RESULTS SCHEMA -
//    returns Recipe
//
//    var vegetrian: Bool
//    var vegan: Bool
//    var glutenFree: Bool
//    var dairyFree: Bool
//    var veryHealthy: Bool
//    var cheap: Bool
//    var veryPopular: Bool
//    var sustainable: Bool
//    var weightWatcherSmartPoints: Int
//    var gaps: String
//    var lowFodmap: Bool
//    var ketogenic: Bool
//    var whole30: Bool
//    var servings: Int
//    var sourceUrl: String as URL
//    var spoonacularSourceURL: String as URL
//    var aggregateLikes: Int
//    var creditText: String
//    var sourceName: String
//    var extendedIngredients: [ (Ingredient)
//      var id: Int
//      var aisle: String
//      var image: String as URL
//      var name: String
//      var amount: Double
//      var unit: String
//      var unitShort: String
//      var unitLong: String
//      var originalString: String
//      var meta: [String]
//      var metaInformation: [String]
//      var measures: Units.us, Units.metric
//    ]
//    var id: Int
//    var title: String
//    var summary: String
//    var readyInMinutes: Int
//    var image: String as URL
//    var imageType: String
//    var instructions: String
