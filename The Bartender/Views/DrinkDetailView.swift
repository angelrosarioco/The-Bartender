//
//  DrinkDetailView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI

struct DrinkDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var viewModel = DrinkViewModel()
    
    
    let id : String
    
    @State var showSheet = false
    
    var body: some View {
        //  Main Container
        ZStack {
            VStack (spacing: 0) {
                // Header View
                
                HeaderViewWithBackButtonAndFavorite(title: "\(viewModel.drink?.strDrink ?? "")", showSheet: $showSheet)
                
                if let drink = viewModel.drink {
                    
                    
                    ScrollView {
                        
                        ZStack {
                            DrinkImageView(drink: drink, contentMode: .fill)
                                .scaleEffect(1)
                                .blur(radius: 10)
                            
                            LinearGradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.6), Color.white.opacity(0.7), Color.white.opacity(1)], startPoint: .top, endPoint: .bottom)
                                
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .clipped()
                        
                        
                        
                        VStack {
                        
                        DrinkImageView(drink: drink, contentMode: .fit)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .frame(width: 250, height: 250)
                            .padding()
                        InstructionView(drink: drink)
                            .padding()
                        
                        IngredientSectionView(drink: drink)
                            .padding()
                            
                            //TODO: - Review needs to be repaired and configured
//                        ReviewList(showSheet: $showSheet, drink: drink)
                        
                        }
                        .offset(y: -125)
                    }
                } else {
                    ProgressView()
                    Text("Loading")
                        .font(.headline)
                }
                
                Spacer()
            }
            .frame(maxWidth: 600)
            .frame(maxWidth: .infinity)
            .navigationBarHidden(true)
            .onAppear {
                self.showSheet = false
                viewModel.fetchDrinkDetail(id: id)
            }
            
            if showSheet {
                RegisterSheetView(showSheet: $showSheet)
            }
        }
        
    }
}








