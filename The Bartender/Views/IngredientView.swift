//
//  IngredientView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/15/22.
//

import SwiftUI

/**
 Ingredient View
 */
struct IngredientView: View {
    @StateObject var viewModel = DrinkViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    @State var text = ""
    
    var body: some View {
        VStack (spacing: 0) {
            HeaderViewWithBackButton(title: "Ingredients")
            
            if let ingredients = viewModel.ingredients {
                HStack {
                    TextField("Search by ingredient", text: $text)
                        .font(.headline)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Spacer()
                    
                    if text != "" {
                        Image(systemName: "xmark.circle.fill")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .background(.white)
                            .clipShape(Circle())
                            .onTapGesture {
                                self.text = ""
                            }
                    }
                    
                }
                .padding()
                .frame(maxWidth:.infinity)
                .frame(height: 50)
                .background(Color("AccentColor"))
                
                ScrollView {
                    
                    if text == "" {
                        LazyVGrid(columns: columns) {
                            ForEach(ingredients) { ingredient in
                                
                                NavigationLink {
                                    DrinksListFromIngredientView(ingredient: ingredient)
                                } label: {
                                    ItemCell(urlString: "\(baseIngredientURL)\(ingredient.strIngredient1.lowercased().replacingOccurrences(of: " ", with: "%20"))\(imageExt)", title: ingredient.strIngredient1.capitalized)
                                }
                                
                            }
                        }
                    } else {
                        if let ingredients = viewModel.ingredients?.filter { $0.strIngredient1.lowercased().contains(text.lowercased())} {
                            LazyVGrid(columns: columns) {
                                ForEach(ingredients) { ingredient in
                                    
                                    NavigationLink {
                                        DrinksListFromIngredientView(ingredient: ingredient)
                                    } label: {
                                        ItemCell(urlString: "\(baseIngredientURL)\(ingredient.strIngredient1.lowercased().replacingOccurrences(of: " ", with: "%20"))\(imageExt)", title: ingredient.strIngredient1.capitalized)
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                }
                
            } else {
                
                Spacer()
                ProgressView()
                Text("Loading")
                    .font(.headline)
                Button {
                    viewModel.fetchIngredients()
                } label: {
                    Text("Refresh")
                        .font(.headline)
                }
                

            }
            Spacer()
        }
        .background(Color("BackgroundColor").ignoresSafeArea())
        .navigationBarHidden(true)
        .onAppear {
            if viewModel.ingredients == nil {
                viewModel.fetchIngredients()
            }
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView()
    }
}
