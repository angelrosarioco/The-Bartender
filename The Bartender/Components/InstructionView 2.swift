//
//  InstructionView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI

struct InstructionView: View {
    
    let drink: DrinkDetail
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text("Instructions")
                .font(.headline)
            Divider()
            Text("\(drink.strInstructions ?? "")")
                .italic()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
