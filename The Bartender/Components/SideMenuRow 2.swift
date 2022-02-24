//
//  SideMenuRow.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/13/22.
//

import SwiftUI

struct SideMenuRow: View {
    
    let option : SideMenuViewModel
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "\(option.imageName)")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
            
            Text(option.title)
                .font(.headline)
            
            Spacer()
            
        }
        .foregroundColor(.black)
        .padding()
        .frame(height: 50)
        
    }
}

struct SideMenuRow_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRow(option: SideMenuViewModel.ingredients)
            .preferredColorScheme(.dark)
    }
}
