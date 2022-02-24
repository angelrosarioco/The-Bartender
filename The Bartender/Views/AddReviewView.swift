////
////  AddReviewView.swift
////  The Bartender
////
////  Created by Angel Rosario on 2/23/22.
////
//
//import SwiftUI
//
//struct AddReviewView: View {
//    @ObservedObject var viewModel = ReviewViewModel()
//    @Environment(\.dismiss) var dismiss
//    
//    var drink : DrinkDetail
//    
//    @State var caption = ""
//    var body: some View {
//        VStack (spacing: 20) {
//            ZStack {
//                Text("Add Review")
//                HStack {
//                    Button {
//                        dismiss.callAsFunction()
//                    } label: {
//                        Text("Cancel")
//                    }
//                    
//                    Spacer()
//                    
//                    Button {
//                        if let id = drink.idDrink {
//                            if caption != "" {
//                                viewModel.addReview(id: id, caption: caption) {
//                                    dismiss.callAsFunction()
//                                }
//                            }
//                        }
//                        
//                    } label: {
//                        Text("Add")
//                    }
//
//                }
//            }
//            
//            TextArea("Let us know what you think", text: $caption)
//                
//        }
//        .padding()
//        
//    }
//}
