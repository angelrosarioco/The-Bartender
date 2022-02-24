////
////  LoginView.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/18/22.
////
//
//import SwiftUI
//
//struct LoginView: View {
//    @EnvironmentObject var viewModel : AuthViewModel
//    
//    @State var email = ""
//    @State var password = ""
//    var body: some View {
//        // Main Container
//        VStack {
//            // Header View
//            LogoHeaderView()
//            
//            
//            VStack (spacing: 40) {
//                
//                Text("Login")
//                    .font(.title2)
//                    .fontWeight(.thin)
//                
//                AuthTextField(imageName: "envelope",
//                                placeholder: "Email",
//                                text: $email,
//                                isPassword: false)
//                
//                AuthTextField(imageName: "lock",
//                                placeholder: "Password",
//                                text: $password,
//                              isPassword: true)
//                
//                
//            }
//            .padding(.horizontal, 32)
//            .padding(.top, 44)
//            
//            Button {
//                viewModel.login(email: email, password: password)
//            } label: {
//                Text("Sign In")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .frame(width: 340, height: 50)
//                    .background(Color("AccentColor"))
//                    .clipShape(Capsule())
//                    .padding()
//                    
//            }
//            .shadow(color: .black.opacity(0.5), radius: 2, x: 0, y: 1)
//            
//            Spacer()
//            
//            NavigationLink {
//                RegisterView()
//            } label: {
//                HStack {
//                    Text("Don't have an account?")
//                        .font(.caption)
//                    Text("Sign Up")
//                        .font(.caption)
//                        .fontWeight(.semibold)
//                }
//            }
//            .foregroundColor(.white)
//            .frame(maxWidth: .infinity)
//            .padding()
//            .padding(.bottom, 32)
//            .background(Color("AccentColor"))
//            .clipShape(RoundedShape(corners: [.topLeft, .topRight]))
//            .padding(.horizontal)
//        }
//        .ignoresSafeArea(edges: .bottom)
//        .navigationBarHidden(true)
//        
//    }
//}
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
//
//struct AuthHeaderView: View {
//    
//    let title : String
//    let subtitle : String
//    var body: some View {
//        VStack (alignment: .leading) {
//            HStack{Spacer()}
//            Text(title)
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//            Text(subtitle)
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//        }
//        .frame(height: 220)
//        .padding(.leading)
//        .background(Color("AccentColor"))
//        .foregroundColor(.white)
//        .clipShape(RoundedShape(corners: .bottomRight))
//    }
//}
