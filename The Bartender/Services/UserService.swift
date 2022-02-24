////
////  UserService.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/20/22.
////
//
//import Foundation
//import Firebase
//import FirebaseFirestore
//import SwiftUI
//
//struct UserService {
//    @ObservedObject var viewModel = AuthViewModel()
//    let db = Firestore.firestore()
//    
//
//        
//    func login(email: String, password: String, completion: @escaping(FirebaseAuth.User, UserModel) -> ()) {
//        Auth.auth().signIn(withEmail: email, password: password) { result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//                return
//            }
//            
//            guard let currentUser = result?.user else { return }
//            db.collection("users").document(currentUser.uid).getDocument { snapshot, error in
//                if error != nil {
//                    print(error!.localizedDescription)
//                    return
//                }
//                
//                guard let id = snapshot?.documentID else { return }
//                
//                guard let document = snapshot?.data() else { return }
//                let user = UserModel(id: id, displayName: document["displayName"] as! String, fullname: document["fullname"] as! String, email: document["email"] as! String)
//                
//                completion(currentUser, user)
//            }
//        }
//    }
//    
//    
//    // MARK: Register
//    func registerAsGuest(completion: @escaping(FirebaseAuth.User) -> ()) {
//        Auth.auth().signInAnonymously { result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//                return
//            }
//            
//            guard let user = result?.user else { return }
//            
//            completion(user)
//        }
//    }
//    
//    func register(email: String, password: String, fullname: String, displayName: String, completion: @escaping(Bool) -> ()) {
//        let credential = EmailAuthProvider.credential(withEmail: email, password: password)
//        Auth.auth().currentUser!.link(with: credential) { result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//                return
//            }
//            
//            guard let uid = result?.user.uid else { return }
//            
//            let userRef = db.collection("users")
//            userRef.document(uid).setData([
//                "fullname" : fullname,
//                "displayName" : displayName,
//                "email" : email
//            ])
//            
//        }
//    }
//    
//    func checkIfAnonymous(completion: @escaping(Bool) -> ()) {
//        completion(Auth.auth().currentUser!.isAnonymous)
//    }
//    
//    // MARK: Signout
//    func signout() {
//        do {
//            try Auth.auth().signOut()
//        } catch let error {
//            print(error.localizedDescription)
//            return
//        }
//    }
//    
//}
