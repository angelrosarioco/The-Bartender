//
//  WelcomeView.swift
//  The Bartender
//
//  Created by Daniela Rosario on 2/19/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("2")
                .resizable()
                .scaledToFit()
                .frame(width: 260)
                .cornerRadius(20)
                .padding(.vertical)
            
            Text("Cocktail recipes \nin your pocket")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineSpacing(0)
            
            Spacer()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
