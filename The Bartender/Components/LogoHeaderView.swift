//
//  LogoHeaderView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/20/22.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        VStack (spacing: 0) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 125, height: 125)
            Text("THE BARTENDER")
                .font(.title)
                .fontWeight(.bold)
        }
        .padding(.bottom)
        .padding(.horizontal)
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LogoHeaderView()
    }
}
