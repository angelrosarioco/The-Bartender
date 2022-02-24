//
//  DashboardView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel = DrinkViewModel()
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    @State var showMenu = false
    @State var showSheet = false
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            
            VStack (spacing: 0) {
                
                HeaderViewWithMenu(title: "The Bartender", showMenu: $showMenu)
                
                
                ScrollView {
                    VStack (alignment: .leading) {
                        
                        if let latestDrinks = viewModel.latestDrinks {
                            
                                Text("Latest Drinks")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .padding(.leading)
                            
                            DrinkCellCarousel(drinks: latestDrinks)
                        }
                        
                    }
                    .padding(.vertical, 8)
                    
                    VStack (alignment: .leading) {
                        
                        if let popularDrinks = viewModel.popularDrinks {
                            
                                Text("Popular Drinks")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .padding(.leading)
                            
                            DrinkCellCarousel(drinks: popularDrinks)
                            
                        }
                        
                    }
                    .padding(.vertical, 8)
                }
                
                
                Spacer()
               
            }
            
            if showMenu {
                Color.black
                    .ignoresSafeArea()
                    .opacity(0.2)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.showMenu = false
                        }
                    }
            }
            SideMenuView(showSheet: $showSheet)
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300)
            
            if showSheet {
                    RegisterSheetView(showSheet: $showSheet)
            }
            
        }
        .background(Color("BackgroundColor").ignoresSafeArea())
        .navigationBarHidden(true)
        .navigationTitle("")
        .onAppear {
            self.showSheet = false
            viewModel.fetchLatestDrinks()
            viewModel.fetchPopularDrinks()
        }
        .onDisappear {
            self.showMenu = false
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}




