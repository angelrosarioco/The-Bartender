////
////  ReviewList.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/22/22.
////
//
//import SwiftUI
//import Firebase
//
//struct ReviewList: View {
//    
//    @Binding var showSheet : Bool
//    
//    @State var showAddReview = false
//    
//    let drink : DrinkDetail
//    
//    var body: some View {
//        ZStack {
//            VStack (alignment: .leading, spacing: 0) {
//                HStack {
//                    Text("Reviews")
//                        .font(.headline)
//                    Spacer()
//                    Button {
//                        if let currentUser = Auth.auth().currentUser {
//                            if currentUser.isAnonymous {
//                                self.showSheet = true
//                            } else {
//                                self.showAddReview.toggle()
//                            }
//                        }
//                    } label: {
//                        Image(systemName: "plus")
//                            .font(.headline)
//                    }
//
//                }
//                .padding()
//                Divider()
//                List(0 ..< 10) { i in
//                    VStack (alignment: .leading, spacing: 8) {
//                        HStack (alignment: .top) {
//                            Text("Angel Rosario")
//                                .font(.headline)
//                            Spacer()
//                            Text("1 hour ago")
//                                .font(.caption)
//                        }
//                            
//                        Text("This drink is smooth to the taste. I can't get enough.")
//                            .multilineTextAlignment(.leading)
//                            .lineLimit(3)
//                    }
//                }
//                .listStyle(.plain)
//            }
//            .sheet(isPresented: $showAddReview) {
//                AddReviewView(drink: drink)
//            }
//            
//            
//        }
//    }
//}
//
