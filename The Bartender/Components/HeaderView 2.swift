//
//  HeaderView.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/12/22.
//

import SwiftUI
//import Firebase


struct HeaderViewWithBackButton: View {
//    @ObservedObject var authVM = AuthViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    let title : String
    
    var body: some View {
        ZStack {
            
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            HStack {
                
                    Button {
                        dismiss.callAsFunction()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                        
                    }
                
                Spacer()
                
            }
            
            
            
        }
        .padding()
        .background(Color("AccentColor"))
        .tint(.white)
    }
}

struct HeaderViewWithBackButtonAndFavorite: View {
//    @ObservedObject var authVM = AuthViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    let title : String
    @State var isFavorite = false
    @Binding var showSheet : Bool
    var body: some View {
        ZStack {
            
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            HStack {
                
                    Button {
                        dismiss.callAsFunction()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                        
                    }
                
                Spacer()
                
                

            }
            
            
            
        }
        .padding()
        .background(Color("AccentColor"))
        .tint(.white)
    }
}

struct HeaderViewWithMenu: View {
    
    let title : String
    @Binding var showMenu : Bool
    
    var body: some View {
        ZStack {
            
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            HStack {
                
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.title2)
                    
                }
                
                Spacer()
                
                
            }
            
            
            
        }
        .padding()
        .background(Color("AccentColor"))
        .tint(.white)
    }
}
