//
//  DrinksListFromIngredientView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/15/22.
//

import SwiftUI

struct DrinksListFromIngredientView: View {
    
    @ObservedObject var viewModel = DrinkViewModel()
    
    var ingredient : IngredientDrink
    
    init(ingredient: IngredientDrink) {
        self.ingredient = ingredient
    }
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            
            HeaderViewWithBackButton(title: "Cocktails")
            
            Text("Here are some cocktails recipes that contains \(ingredient.strIngredient1).")
                .font(.headline)
                .padding()
            
            if let filterDrinks = viewModel.filterDrinks, filterDrinks.count > 0 {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(filterDrinks) { drink in
                            
                            if drink.strDrink != "" {
                                NavigationLink {
                                    if let id = drink.idDrink {
                                            DrinkDetailView(id: id)
                                            .environmentObject(viewModel)
                                    }
                                } label: {
                                    if let title = drink.strDrink, let urlString = drink.strDrinkThumb {
                                        ItemCell(urlString: urlString, title: title)
                                    }
                                }
                            }

                        }
                    }
                    .padding()
                }
            } else {
                Spacer()
                Text("No Drinks Found")
                    .font(.headline)
            }
            Spacer()
            
        }
        .background(Color("BackgroundColor").ignoresSafeArea())
        .navigationBarHidden(true)
        .onAppear {
            if viewModel.previousIngredient?.id != ingredient.id {
                viewModel.fetchDrinksBy(ingredient: ingredient)
            }
        }
    }
}
