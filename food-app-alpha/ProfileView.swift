//
//  ProfileView.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI

let favorite = Favorite(imageName: "")

var columns: [GridItem] =
         Array(repeating: .init(.flexible()), count: 3)

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.favoritesArray) {favorite in
                            FoodItemCellView(imageName: favorite.imageName)
                        }
                                                
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct FoodItemCellView: View {
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
        }
    }
}
