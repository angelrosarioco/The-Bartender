//
//  FilterModel.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import Foundation

// MARK: - FilterModel
struct FilterModel: Codable {
    var drinks: [FilterDrink]?
}

// MARK: - Drink
struct FilterDrink: Codable, Identifiable {
    let id = UUID()
    let strDrink: String?
    let strDrinkThumb: String?
    let idDrink: String?
}
