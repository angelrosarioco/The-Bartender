//
//  DrinkImageView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI

struct DrinkImageView: View {
    
    let drink: DrinkDetail
    let contentMode: ContentMode
    
    var body: some View {
        AsyncImage(url: URL(string: drink.strDrinkThumb!)!, content: { image in
            image
                .resizable()
                .aspectRatio(contentMode: contentMode)
        }, placeholder: {
            ProgressView()
        })
            
    }
}
