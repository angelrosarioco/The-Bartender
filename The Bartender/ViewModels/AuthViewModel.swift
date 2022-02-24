////
////  AuthViewModel.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/20/22.
////
//
//import SwiftUI
//import Firebase
//
//
//class AuthViewModel: ObservableObject {
//    @Published var userSession : FirebaseAuth.User?
//    @Published var user : UserModel?
//    @Published var isAnonymous : Bool? = Auth.auth().currentUser?.isAnonymous
//    
//    @AppStorage("initialIsCompleted") var initialIsCompleted = false
//    
//    let session = UserService()
//    
//    
//    init() {
////        self.userSession = Auth.auth().currentUser
//    }
//    
//    
//    
//    func login(email: String, password: String) {
//        session.login(email: email, password: password) { (currentUser, user) in
//            self.userSession = currentUser
//            self.user = user
//        }
//    }
//    
//    func registerAsGuest() {
//        session.registerAsGuest { user in
//            self.userSession = user
//            self.initialIsCompleted = true
//        }
//    }
//    
//    func register(email: String, password: String, fullname: String, displayName: String, action: (() -> ())) {
//        session.register(email: email, password: password, fullname: fullname, displayName: displayName) { isAnonymous in
//            self.isAnonymous = isAnonymous
//        }
//    }
//    
//    func signout() {
//        session.signout()
//        self.userSession = nil
//    }
//}
