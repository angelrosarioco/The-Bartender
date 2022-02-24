//
//  SearchDrinkView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/14/22.
//

import SwiftUI

struct SearchDrinkView: View {
    
    @ObservedObject var viewModel = DrinkViewModel()
    
    @State var text = ""
    @State var showMenu = false
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack (alignment: . topLeading) {
            VStack (spacing: 0) {
                HeaderViewWithBackButton(title: "Search")
                HStack {
                    TextField("Search by Cocktail", text: $text)
                        .font(.headline)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Spacer()
                    
                    if text != "" {
                        Image(systemName: "xmark.circle.fill")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .background(.white)
                            .clipShape(Circle())
                            .onTapGesture {
                                self.text = ""
                            }
                    }
                    
                }
                .padding()
                .frame(maxWidth:.infinity)
                .frame(height: 50)
                .background(Color("AccentColor"))
                .onChange(of: text) { _ in
                    viewModel.searchDrinkBy(name: text)
                }
                
                
                VStack {
                    if viewModel.drinks != nil, viewModel.drinks!.count > 0 && text != "" {
                        
                        ScrollView {
                            LazyVGrid(columns: columns) {
                                ForEach(viewModel.drinks!) { drink in
                                    
                                    if drink.strDrink != "" {
                                        NavigationLink {
                                            if let id = drink.idDrink {
                                                    DrinkDetailView(id: id)
                                                    .environmentObject(viewModel)
                                            }
                                        } label: {
                                            if let title = drink.strDrink, let urlString = drink.strDrinkThumb {
                                                ItemCell(urlString: urlString, title: title)
                                            }
                                        }
                                    }

                                }
                            }
                            .padding()
                        }
                        
                        
                        
                        
                    } else {
                        Spacer()
                        Text("Enter Drink Name.")
                            .font(.headline)
                    }
                    
                    Spacer()
                }
                
                
                    
                
                Spacer()
            }
            
        }
        .background(Color("BackgroundColor").ignoresSafeArea())
        .navigationBarHidden(true)
        .navigationTitle("")
    }
}

struct SearchDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDrinkView()
    }
}
