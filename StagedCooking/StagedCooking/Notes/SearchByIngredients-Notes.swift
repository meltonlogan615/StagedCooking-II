//
//  SearchByIngredients.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/30/21.
//

import Foundation

//  Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a whats in your fridge API endpoint.

// - REQUIRED PARAMETERS -
//    ingredients = [String] - A comma-separated list of ingredients that the recipes should contain.

// - OPTIONAL PARAMETERS -
//    number: Int        -> max number of recipes to return (default = 5)
//    limitLicense: Bool -> Whether to only show recipes with an attribution license
//    ignorePantry: Bool -> Whether to ignore pantry ingredients such as water, salt, flour, etc
//    ranking: Int       -> Wheterh to maximize used ingredients (1) or minimuze missing ingredients (2)

// - RESULTS SCHEMA -
//    var id: Int
//    var title: String
//    var image: String as URI
//    var usedIngredientCount: Int
//    var missedIngredientCount: Int
//    var likes: Int

// - NOTES & THOUGHTS -
/**
 
 
 */
