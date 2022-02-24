////
////  RegisterView.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/19/22.
////
//
//import SwiftUI
//import Firebase
//
//struct RegisterView: View {
//
//    @State var email = ""
//    @State var password = ""
//    @State var fullname = ""
//    @State var displayName = ""
//
//    @Environment(\.dismiss) var dismiss
//    @EnvironmentObject var viewModel : AuthViewModel
//
//    var body: some View {
//        // Main Container
//        VStack {
//            // Header View
//            ZStack (alignment: .top) {
//                LogoHeaderView()
//                HStack(alignment: .top) {
//                    Button {
//                        dismiss.callAsFunction()
//                    } label: {
//                        Image(systemName: "chevron.left")
//                            .font(.title2)
//                    }
//                    Spacer()
//                }
//                .padding()
//            }
//
//
//            VStack (spacing: 20) {
//
//                Text("Register")
//                    .font(.title2)
//                    .fontWeight(.thin)
//
//                AuthTextField(imageName: "envelope",
//                                placeholder: "Email",
//                                text: $email,
//                                isPassword: false, isEmail: true)
//
//                AuthTextField(imageName: "lock",
//                                placeholder: "Password",
//                                text: $password,
//                              isPassword: true)
//
//
//                AuthTextField(imageName: "person",
//                                placeholder: "Fullname",
//                                text: $fullname,
//                              isPassword: false)
//
//
//                AuthTextField(imageName: "person",
//                                placeholder: "Display Name",
//                                text: $displayName,
//                              isPassword: false)
//
//
//            }
//            .padding(.horizontal, 32)
//            .padding(.top, 44)
//
//            Button {
//                viewModel.register(email: email, password: password, fullname: fullname, displayName: displayName) {
//                    dismiss.callAsFunction()
//                }
//            } label: {
//                Text("Sign Up")
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
//
//
//            Spacer()
//
//
//        }
//        .ignoresSafeArea(edges: .bottom)
//        .navigationBarHidden(true)
//
//    }
//}
//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView()
//    }
//}
