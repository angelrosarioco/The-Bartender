//
//  DrinkService.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI


/**
 Drink Service is a collective of functions that fetches drink information through an API.
 The API that this app is fetching from is within https://www.thecocktaildb.com/
 */
struct DrinkService {
    
    
    func fetchIngredients(completion: @escaping([IngredientDrink]) -> ()) async {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/list.php?i=list") else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
            
            let unwrappedData = try JSONDecoder().decode(IngredientModel.self, from: data)
            
            let ingredients = unwrappedData.drinks
            completion(ingredients)
            
        } catch let error {
            print(error.localizedDescription)
            return
        }
        
        
    }
    
    func fetchDrinksBy(ingredient: String, completion: @escaping([FilterDrink]) -> ()) async {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=\(ingredient.lowercased().replacingOccurrences(of: " ", with: "%20"))") else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("DEBUG: Connectivity failed")
                return
            }
            
            let unwrappedData = try JSONDecoder().decode(FilterModel.self, from: data)
            
            guard let filteredDrinks = unwrappedData.drinks else { return }
            completion(filteredDrinks)
            
        } catch let error {
            print(error.localizedDescription)
            return
        }
        
    }
    
    
    
    

    
    
    //MARK: Fetch Latest
    func fetchLatest(completion: @escaping([DrinkDetail]) -> ()) {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/latest.php") else { return }
        do {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
                guard let data = data else { return }
                
                let detail = try? JSONDecoder().decode(DrinkDetailModel.self, from: data)
                
                    guard let drinks = detail?.drinks else { return }
                
                    completion(drinks)
                
            }.resume()
        }
    }
        
    
    
    //MARK: Fetch Popular
    func fetchPopular(completion: @escaping([DrinkDetail]) -> ()) {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/popular.php") else { return }
        do {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
                guard let data = data else { return }
                
                let detail = try? JSONDecoder().decode(DrinkDetailModel.self, from: data)
                
                    guard let drinks = detail?.drinks else { return }
                    completion(drinks)
                
            }.resume()
        }
    }
    
    
    
    //MARK: Fetch Drink Detail
    func fetchDrinkDetail(id: String, completion: @escaping(DrinkDetail) -> ()) {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/lookup.php?i=\(id)") else { return }
        
        do {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
                guard let data = data else { return }
                
                let detail = try? JSONDecoder().decode(DrinkDetailModel.self, from: data)
                
                
                    guard let drink = detail?.drinks?.first else { return }
                    completion(drink)
                
            }.resume()
            
        }
    }
    
    
    
    //MARK: Fetch Random Drink
    func fetchRandomDrink(completion: @escaping(DrinkDetail, Bool) -> ()) {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/" + apiKey + "/random.php") else { return }
        
        do {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
                guard let data = data else { return }
                
                let detail = try? JSONDecoder().decode(DrinkDetailModel.self, from: data)
                
                
                    guard let drink = detail?.drinks?.first else { return }
                    completion(drink, true)
                
            }.resume()
            
        }
    }
    
    
    
    //MARK: Search Drink By
    func searchDrinkBy(name: String, completion: @escaping([DrinkDetail]) -> ()) {
        
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/search.php?s=" + name) else { return }
        
        do {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!.localizedDescription)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else { return }
                guard let data = data else { return }
                
                let detail = try? JSONDecoder().decode(DrinkDetailModel.self, from: data)
                
                guard let drinks = detail?.drinks else { return }
                
                completion(drinks)
                
            }.resume()
            
        } 
        
    }
}



