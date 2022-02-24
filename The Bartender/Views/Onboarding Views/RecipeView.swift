//
//  RecipeView.swift
//  The Bartender
//
//  Created by Daniela Rosario on 2/19/22.
//

import SwiftUI

struct RecipeView: View {
    var body: some View {
        VStack {
            Image("4")
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 390)
                .cornerRadius(20)
                .padding(.vertical)
            
            Text("Search from hundreds \nof delicious cocktails")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineSpacing(0)
            
            Spacer()
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
