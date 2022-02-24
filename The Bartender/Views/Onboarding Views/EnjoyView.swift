//
//  EnjoyView.swift
//  The Bartender
//
//  Created by Daniela Rosario on 2/19/22.
//

import SwiftUI

struct EnjoyView: View {
    var body: some View {
        VStack {
            Image("6")
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 390)
                .cornerRadius(20)
                .padding(.vertical)
            
            Text("And enjoy your \nfavorite drinks.")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .lineSpacing(0)
            
            Spacer()
        }
    }
}

struct EnjoyView_Previews: PreviewProvider {
    static var previews: some View {
        EnjoyView()
    }
}
