//
//  IngredientView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI

struct IngredientSectionView: View {
    
    let drink: DrinkDetail
    @State var i = 1
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text("Ingredients")
                .font(.headline)
            Divider()
            
            
            
            // Ingredients 1-3
            Group {
                
                // Ingredient 1
                if drink.strIngredient1 != nil && drink.strIngredient1 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient1 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure1 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 2
                if drink.strIngredient2 != nil && drink.strIngredient2 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient2 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Text("\(drink.strMeasure2 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 3
                if drink.strIngredient3 != nil && drink.strIngredient3 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient3 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Text("\(drink.strMeasure3 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
            }
            
            
            
            // Ingredients 4-6
            Group {
                
                // Ingredient 4
                if drink.strIngredient4 != nil && drink.strIngredient4 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient4 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure4 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 5
                if drink.strIngredient5 != nil && drink.strIngredient5 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient5 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure5 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                
                // Ingredient 6
                if drink.strIngredient6 != nil && drink.strIngredient6 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient6 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                       
                        Text("\(drink.strMeasure6 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
            
            }
            
            
            
            // Ingredients 7-9
            Group {
                
                // Ingredient 7
                if drink.strIngredient7 != nil && drink.strIngredient7 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient7 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure7 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 8
                if drink.strIngredient8 != nil && drink.strIngredient8 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient8 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure8 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 9
                if drink.strIngredient9 != nil && drink.strIngredient9 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient9 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure9 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
            
            }
            
            
            
                // Ingredient 10-12
            Group {
                
                // Ingredient 10
                if drink.strIngredient10 != nil && drink.strIngredient10 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient10 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Text("\(drink.strMeasure10 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                
                // Ingredient 11
                if drink.strIngredient11 != nil && drink.strIngredient11 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient11 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure11 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 12
                if drink.strIngredient12 != nil && drink.strIngredient12 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient12 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure12 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
            
            }
            
            
            
                // Ingredient 13-15
            Group {
                // Ingredient 13
                if drink.strIngredient13 != nil && drink.strIngredient13 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient13 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure13 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 14
                if drink.strIngredient14 != nil && drink.strIngredient14 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient14 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure14 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
                
                // Ingredient 15
                if drink.strIngredient15 != nil && drink.strIngredient15 != "" {
                    HStack {
                        
                        Text("\(drink.strIngredient15 ?? "")")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("\(drink.strMeasure15 ?? "1 Part")")
                            .foregroundColor(.white)
                            .padding(.trailing, 4)
                            .frame(width: 100, alignment: .trailing)
                            .background(.gray)
                            .cornerRadius(10)
                    }
                    .padding(.vertical, 8)
                }
            
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    
}
