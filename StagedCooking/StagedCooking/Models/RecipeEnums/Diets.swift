//
//  Diets.swift
//  StagedCooking
//
//  Created by Logan Melton on 1/22/22.
//

import Foundation

enum Diets: String, Codable {
  case GlutenFree = "Eliminating gluten means avoiding wheat, barley, rye, and other gluten-containing grains and foods made from them (or that may have been cross contaminated)."
  
  case Ketogenic = "The keto diet is based more on the ratio of fat, protein, and carbs in the diet rather than specific ingredients. Generally speaking, high fat, protein-rich foods are acceptable and high carbohydrate foods are not. The formula we use is 55-80% fat content, 15-35% protein content, and under 10% of carbohydrates."
  
  case Vegetarian = "No ingredients may contain meat or meat by-products, such as bones or gelatin."
  
  case LactoVegetarian = "All ingredients must be vegetarian and none of the ingredients can be or contain egg."
  
  case OvoVegetarian = "All ingredients must be vegetarian and none of the ingredients can be or contain dairy."
  
  case Vegan = "No ingredients may contain meat or meat by-products, such as bones or gelatin, nor may they contain eggs, dairy, or honey."
  
  case Pescetarian = "Everything is allowed except meat and meat by-products - some pescetarians eat eggs and dairy, some do not."
    
  case Paleo = "Allowed ingredients include meat (especially grass fed), fish, eggs, vegetables, some oils (e.g. coconut and olive oil), and in smaller quantities, fruit, nuts, and sweet potatoes. We also allow honey and maple syrup (popular in Paleo desserts, but strict Paleo followers may disagree). Ingredients not allowed include legumes (e.g. beans and lentils), grains, dairy, refined sugar, and processed foods."
    
  case Primal = "Very similar to Paleo, except dairy is allowed - think raw and full fat milk, butter, ghee, etc."
    
  case LowFODMAP = "FODMAP stands for \"fermentable oligo-, di-, mono-saccharides and polyols\". Our ontology knows which foods are considered high in these types of carbohydrates (e.g. legumes, wheat, and dairy products)."
                        
  case Whole30 = "Allowed ingredients include meat, fish/seafood, eggs, vegetables, fresh fruit, coconut oil, olive oil, small amounts of dried fruit and nuts/seeds. Ingredients not allowed include added sweeteners (natural and artificial, except small amounts of fruit juice), dairy (except clarified butter or ghee), alcohol, grains, legumes (except green beans, sugar snap peas, and snow peas), and food additives, such as carrageenan, MSG, and sulfites."
}
