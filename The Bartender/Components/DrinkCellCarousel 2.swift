//
//  DrinkCellCarousel.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/13/22.
//

import SwiftUI

struct DrinkCellCarousel: View {
    
    let drinks : [DrinkDetail]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(drinks) { drink in
                    
                    NavigationLink {
                        DrinkDetailView(id: drink.idDrink!)
                    } label: {
                        if let urlString = drink.strDrinkThumb, let title = drink.strDrink {
                            ItemCell(urlString: urlString, title: title)
                                .padding(.leading, drinks.first?.idDrink! == drink.idDrink! ? 16 : 0)
                                .padding(.trailing, 8)
                                .padding(.trailing, drinks.last?.idDrink! == drink.idDrink! ? 8 : 0)
                        }
                    }

                    
                }
            }
        }
    }
}
