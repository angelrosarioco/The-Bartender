//
//  The_BartenderApp.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI
//import Firebase

/**
 Things to add and repair on the next update:
 - Firebase is deactivated.
 - Firebase must be added for user login and to add future reviews on drinks
 - UserService : Fetch User Info needs to be repaired
 - AuthViewModel : Fetch User Info needs to be created
 - ReviewService: Fetch Reviews needs to be created
 - ReviewViewModel: Fetch Reviews needs to be created
 - ReviewList: Is currently not in use
 - FavoriteListView: Needs to be created
 - FavoriteButton: Is currently inactive.
 */



@main
struct The_BartenderApp: App {
    
    @AppStorage("initialIsCompleted") var initialIsCompleted = false
    
//    @StateObject var viewModel = AuthViewModel()
    
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
            
         NavigationView {
            
            if initialIsCompleted {
                ContentView()
                    .navigationBarHidden(true)
            } else {
                WelcomePageView()
                    .navigationBarHidden(true)
            }
             
        }
//         .environmentObject(viewModel)
        .navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    }
}
