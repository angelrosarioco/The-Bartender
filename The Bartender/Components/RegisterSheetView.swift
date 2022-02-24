//
//  RegisterSheetView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/22/22.
//

import SwiftUI

struct RegisterSheetView: View {
    
    @Binding var showSheet : Bool
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
                .ignoresSafeArea()
                .onTapGesture {
                    self.showSheet = false
                }
            VStack (spacing: 20) {
                Text("Register Now")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("You must register in order to add drinks to ") + Text("favorites ").bold() + Text("and to ") + Text("comment ").bold() + Text("on your drinks.")
                
                NavigationLink {
//                    RegisterView()
                } label: {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color("AccentColor"))
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding(.vertical, 4)

                
                Button {
                    self.showSheet = false
                } label: {
                    Text("Sign Up Later")
                        .foregroundColor(Color("AccentColor"))
                        .font(.headline)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding(.vertical, 4)
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct RegisterSheetView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSheetView(showSheet: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
