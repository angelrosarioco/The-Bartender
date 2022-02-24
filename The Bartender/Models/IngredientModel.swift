//
//  IngredientModel.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/15/22.
//

import Foundation

// MARK: - IngredientModel
struct IngredientModel: Codable {
    let drinks: [IngredientDrink]
}

// MARK: - Drink
struct IngredientDrink: Codable, Identifiable {
    let id = UUID()
    let strIngredient1: String
}
