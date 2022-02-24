//
//  CustomTextField.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/18/22.
//

import SwiftUI

struct AuthTextField: View {
    let imageName : String
    let placeholder : String
    @Binding var text: String
    var isPassword : Bool
    var isEmail : Bool = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("AccentColor"))
                
                ZStack (alignment: .leading) {
                    Text(text == "" ? placeholder : "")
                    if isPassword {
                        SecureField("", text: $text)
                        
                    } else {
                        TextField("", text: $text)
                            .keyboardType(isEmail ? .emailAddress : .default)
                    }
                }
                .font(.headline)
                .padding(.leading, 4)
            }
            .padding()
            .background(Color("BackgroundColor"))
            .cornerRadius(10)
            
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        AuthTextField(imageName: "envelope", placeholder: "Email", text: .constant(""), isPassword: false)
    }
}
