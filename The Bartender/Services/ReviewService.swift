////
////  ReviewService.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/23/22.
////
//
//import Foundation
//import Firebase
//import FirebaseFirestore
//import SwiftUI
//
//struct ReviewService {
//    @ObservedObject var viewModel = AuthViewModel()
//    
//    let db = Firestore.firestore()
//    let now = Date()
//    
//    func AddReview(id: String, caption: String) {
//        print("Posting Review")
//        guard let fullname = viewModel.user?.fullname else { return }
//        print(fullname)
//        db.collection("cocktails").document(id).collection("reviews").document().setData([
//            "caption" : caption,
//            "reviewer" : fullname,
//            "timestamp" : now.formatted()
//        ])
//        
//        print("successful")
//    }
//}
