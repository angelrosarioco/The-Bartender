//
//  DrinkViewModel.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import Foundation

class DrinkViewModel: ObservableObject {
    
//    @Published var categories : [CategoryDrink]?
    @Published var filterDrinks : [FilterDrink]?
    @Published var drink : DrinkDetail?
    @Published var drinks : [DrinkDetail]?
    @Published var latestDrinks : [DrinkDetail]?
    @Published var popularDrinks : [DrinkDetail]?
    @Published var ingredients : [IngredientDrink]?
    @Published var previousIngredient : IngredientDrink?
    
    let service = DrinkService()
    
    init() {
    }
    
    func fetchIngredients() {
        Task {
            await service.fetchIngredients { ingredients in
                DispatchQueue.main.async {
                    
                    self.ingredients = ingredients.sorted(by: {$0.strIngredient1 < $1.strIngredient1} )
                }
            }
        }
    }
    
    func fetchDrinksBy(ingredient: IngredientDrink) {
        
        self.previousIngredient = ingredient
        
        Task {
            await service.fetchDrinksBy(ingredient: ingredient.strIngredient1.lowercased()) { filterDrinks in
                DispatchQueue.main.async {
                    self.filterDrinks = filterDrinks
                }
            }
        }
    }
    
    func fetchLatestDrinks() {
        service.fetchLatest { drinks in
            
            DispatchQueue.main.async {
                self.latestDrinks = drinks
            }
            
        }
    }
    
    func fetchPopularDrinks() {
        service.fetchPopular { drinks in
            DispatchQueue.main.async {
                self.popularDrinks = drinks
            }
        }
    }
    
    
    
    func fetchDrinkDetail(id: String) {
        service.fetchDrinkDetail(id: id) { drink in
            DispatchQueue.main.async {
                self.drink = drink
                print(drink)
            }
        }
    }
    
    func fetchRandomDrink() {
        service.fetchRandomDrink { drink, showRandom in
            self.drink = drink
        }
    }
    
    func searchDrinkBy(name: String) {
        
        service.searchDrinkBy(name: name) { drinks in
            
            DispatchQueue.main.async {
                if !drinks.isEmpty {
                    self.drinks = drinks
                }
            }
            
        }
    }
    

    
    
    
}
