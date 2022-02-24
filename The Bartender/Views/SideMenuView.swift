//
//  SideMenuView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/13/22.
//

import SwiftUI
//import Firebase

struct SideMenuView: View {
    
    @ObservedObject var viewModel = DrinkViewModel()
//    @EnvironmentObject var authVM : AuthViewModel
    @Binding var showSheet : Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    Text("The Bartender")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .padding()
                
                
                
            }
            
            VStack (alignment: .leading) {
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    
                    

                    if option == .ingredients {
                        NavigationLink {
                            IngredientView()
                        } label: {
                            SideMenuRow(option: option)
                        }
                    } else if option == .search {
                        NavigationLink {
                            SearchDrinkView()
                        } label: {
                            SideMenuRow(option: option)
                        }
                    }
                    
//                    else if option == .logout {
//                        Spacer()
//                        
//                        if let currentUser = Auth.auth().currentUser {
//                            if currentUser.isAnonymous {
//                                
//                            } else {
//                                Button {
//                                    authVM.signout()
//                                } label: {
//                                    SideMenuRow(option: option)
//                                }
//                            }
//                        }
//                        
//
//                    }

                    
                }
                
                Spacer()
                
            }
            
            

        }
        .background(Color("BackgroundColor"))
        .navigationTitle("")
        
        
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(showSheet: .constant(true))
    }
}


