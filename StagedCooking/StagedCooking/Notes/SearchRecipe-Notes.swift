//
//  SearchRecipeNotes.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/30/21.
//

import Foundation

// Search recipes in natural language.

// - REQUIRED PARAMETERS -
//    query: String

// - OPTIONAL PARAMETERS -
//    instructionsRequired: Bool?   -> Wheter the recipes must have instructions, for this app, always TRUE
//    diet: String?                 -> The diet to which the recipes must be compliant. Possible values are: pescetarian, lacto vegetarian, ovo vegetarian, vegan, and vegetarian.

//    excludeIngredients: [String]? -> A comma-separated list of ingredients or ingredient types that must not be contained in the recipes.

//    intolerances: [String]?       -> A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. Possible values are: dairy, egg, gluten, peanut, sesame, seafood, shellfish, soy, sulfite, tree nut, and wheat.

//    number: Int?                  -> Number of resuts to return (between 1 & 100)
//    offset: Int?                  -> Number of results to skip (between 0 & 100) <- Pagination
//    type: String?                 -> The type of the recipes. One of the following: main course, side dish, dessert, appetizer, salad, bread, breakfast, soup, beverage, sauce, or drink.

//    limitLicense: Boo?l           -> Whether the recipes should have an open license that allows for displaying with proper attribution.

//    cuisine: String?              -> The cuisine(s) of the recipes. One or more (comma separated) of the following: african, chinese, japanese, korean, vietnamese, thai, indian, british, irish, french, italian, mexican, spanish, middle eastern, jewish, american, cajun, southern, greek, german, nordic, eastern european, caribbean, or latin american.


// - RESULTS SCHEMA -
//
//    var id: Int
//    var title: String
//    var readyInMinutes: String
//    var image: String as UR:
//    var imageUrls: [Strings as URLs]
