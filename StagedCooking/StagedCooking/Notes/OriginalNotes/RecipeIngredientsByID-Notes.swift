//
//  RecipeIngredientsByID.swift
//  StagedCooking
//
//  Created by Logan Melton on 11/30/21.
//

import Foundation

// Get a recipe's ingredient list.

// - REQUIRED PARAMETERS -
//    id: Int  -> Recipe ID

// - OPTIONAL PARAMETERS -
//    none

// - RESULTS SCHEMA -
//  returns [Ingredient]
//  Ingredient {
//    var name: String
//    var image: String
//    var amount: Units {
//      metric: {
//        value: Double
//        unit: String
//      }
//      us: {
//        value: Double
//        unit: String
//      }
//    }
//  }

/*
 {
 "ingredients": [
 {
 "amount": {
 "metric": {
 "unit": "g",
 "value": 222.0
 },
 "us": {
 "unit": "cups",
 "value": 1.5
 }
 },
 "image": "blueberries.jpg",
 "name": "blueberries"
 },
 {
 "amount": {
 "metric": {
 "unit": "",
 "value": 1.0
 },
 "us": {
 "unit": "",
 "value": 1.0
 }
 },
 "image": "egg-white.jpg",
 "name": "egg white"
 },
 {
 "amount": {
 "metric": {
 "unit": "Tbsps",
 "value": 2.0
 },
 "us": {
 "unit": "Tbsps",
 "value": 2.0
 }
 },
 "image": "flour.png",
 "name": "flour"
 },
 {
 "amount": {
 "metric": {
 "unit": "g",
 "value": 150.0
 },
 "us": {
 "unit": "cup",
 "value": 0.75
 }
 },
 "image": "sugar-in-bowl.png",
 "name": "granulated sugar"
 },
 {
 "amount": {
 "metric": {
 "unit": "tsp",
 "value": 1.0
 },
 "us": {
 "unit": "tsp",
 "value": 1.0
 }
 },
 "image": "lemon-juice.jpg",
 "name": "fresh lemon juice"
 },
 {
 "amount": {
 "metric": {
 "unit": "pinch",
 "value": 1.0
 },
 "us": {
 "unit": "pinch",
 "value": 1.0
 }
 },
 "image": "ground-nutmeg.jpg",
 "name": "nutmeg"
 },
 {
 "amount": {
 "metric": {
 "unit": "",
 "value": 2.0
 },
 "us": {
 "unit": "",
 "value": 2.0
 }
 },
 "image": "pie-crust.jpg",
 "name": "pie dough round"
 },
 {
 "amount": {
 "metric": {
 "unit": "Tbsps",
 "value": 2.0
 },
 "us": {
 "unit": "Tbsps",
 "value": 2.0
 }
 },
 "image": "tapioca-pearls.png",
 "name": "quick cooking tapioca"
 },
 {
 "amount": {
 "metric": {
 "unit": "g",
 "value": 305.0
 },
 "us": {
 "unit": "cups",
 "value": 2.5
 }
 },
 "image": "rhubarb.jpg",
 "name": "trimmed rhubarb"
 },
 {
 "amount": {
 "metric": {
 "unit": "tsps",
 "value": 0.333
 },
 "us": {
 "unit": "tsps",
 "value": 0.333
 }
 },
 "image": "salt.jpg",
 "name": "salt"
 },
 {
 "amount": {
 "metric": {
 "unit": "Tbsps",
 "value": 0.5
 },
 "us": {
 "unit": "Tbsps",
 "value": 0.5
 }
 },
 "image": "butter-sliced.jpg",
 "name": "unsalted butter"
 }
 ]
 }
 */
