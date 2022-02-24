//
//  SideMenuViewModel.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/13/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {

    case ingredients
    case search
    case logout
    
    
    var title: String {
        switch self {

        case .ingredients : return "Ingredients"
        case .search : return "Search by Name"
        case .logout : return "Logout"
            
        }
    }
    
    var imageName: String {
        switch self {

        case .ingredients : return "list.bullet.circle"
        case .search : return "magnifyingglass.circle"
        case .logout : return "arrow.left.square"
        }
    }
}
