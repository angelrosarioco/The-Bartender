//
//  WelcomeView.swift
//  The Bartender
//
//  Created by Daniela Rosario on 2/19/22.
//

import SwiftUI

struct WelcomePageView: View {
//    @EnvironmentObject var authVM : AuthViewModel
    
    @State var selection = 1
    @AppStorage("initialIsCompleted") var initialIsCompleted = false
    var body: some View {
        VStack {
            // Logo / Title / Tagline
            
            
            ZStack (alignment: .top) {
                
                LogoHeaderView()
                
                HStack {
                    Spacer()
                    
                    if selection != 3 {
                        Text("Skip")
                            .font(.headline)
                            .onTapGesture {
//                                withAnimation(.easeInOut) {
//                                    authVM.registerAsGuest()
//                                }
                                self.initialIsCompleted = true
                            }
                    }
                    
                }
                .padding()
            }
            
            
            ZStack (alignment: .bottom) {
                TabView(selection: $selection) {
                    WelcomeView().tag(1)
                    RecipeView().tag(2)
                    EnjoyView().tag(3)
                }
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                HStack {
                    if selection > 1 {
                        Button {
                            if selection != 1 {
                                withAnimation(.easeInOut) {
                                    selection -= 1
                                }
                            }
                        } label: {
                            Text("Back")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color("AccentColor"))
                        .cornerRadius(5)
                    }
                    
                    Spacer()
                    
                    Button {
                        if selection < 3 {
                            withAnimation(.easeInOut) {
                                    selection += 1
                            }
                        } else {
//                            withAnimation(.easeInOut) {
//                                authVM.registerAsGuest()
//                            }
                            self.initialIsCompleted = true
                        }
                    } label: {
                        Text(selection < 3 ? "Next" : "Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color("AccentColor"))
                    .cornerRadius(5)
                    
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
            }
            
            
        }
        
    }
}

struct WelcomePacgeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}



