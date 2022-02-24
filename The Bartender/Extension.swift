//
//  Extension.swift
//  The Bartender
//
//  Created by Angel Rosario on 2/13/22.
//

import SwiftUI


let apiKey = "9973533"

let screen = UIScreen.main.bounds

let itemCellResizableHeight = 0.4487
let itemCellResizableWidth = 0.3205

let baseIngredientURL = "https://www.thecocktaildb.com/images/ingredients/"
let imageExt = ".png"



// These Extensions are used for admin perpuses only and will be deleted prior to distribution.
//extension View {
//    func saveAsImage(width: CGFloat, height: CGFloat, _ completion: @escaping (UIImage) -> Void) {
//        let size = CGSize(width: width, height: height)
//        
//        let controller = UIHostingController(rootView: self.frame(width: width, height: height))
//        controller.view.bounds = CGRect(origin: .zero, size: size)
//        let image = controller.view.asImage()
//        
//        completion(image)
//    }
//}
//
//extension UIView {
//    func asImage() -> UIImage {
//        let renderer = UIGraphicsImageRenderer(size: self.bounds.size)
//        return renderer.image { ctx in
//            self.drawHierarchy(in: self.bounds, afterScreenUpdates: true)
//        }
//    }
//}
