//
//  Favorite.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI

struct Favorite: Hashable, Identifiable {
    let id = UUID()
    let imageName: String
}

let sampleFavorite = Favorite(imageName: "ironman")

struct MockData {
    
    static let favoritesArray = [
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman"),
        Favorite(imageName: "ironman")
        
        ]
    
}
