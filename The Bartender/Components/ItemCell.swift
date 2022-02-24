//
//  IngredientCell.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/15/22.
//

import SwiftUI
import Kingfisher

struct ItemCell: View {
    
    let urlString : String
    let title : String
    
    var body: some View {
        
        VStack {
            KFImage(URL(string: urlString))
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()

            Text(title)
                .font(.headline)
                .lineLimit(2)
                .padding(8)
            
            
            Spacer()
        }
        .frame(height: 250)
        .frame(width: 175)
        .background(Color("BackgroundColor"))
        .cornerRadius(20)
        .shadow(radius: 3)
        .padding(8)
        
    }
}


struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell(urlString: "https://www.thecocktaildb.com/images/ingredients/dark%20rum.png", title: "Captian Morgan")
            .previewLayout(.sizeThatFits)
        
        ItemCell(urlString: "https://www.thecocktaildb.com//images//media//drink//5noda61589575158.jpg", title: "Captian Morgan")
            .previewLayout(.sizeThatFits)
    }
}
