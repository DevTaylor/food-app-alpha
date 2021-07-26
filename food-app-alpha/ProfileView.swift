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
    
    @State private var searchField = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: columns) {
                        ForEach(MockData.favoritesArray) {favorite in
                            FoodItemCellView(imageName: favorite.imageName)
                        }
                    }
                    
                    
                    CustomTextEditor(placeholder: "What are you craving?", searchText: $searchField)
                        .padding(.vertical)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1.0).frame(height: 45))
                        .padding(.horizontal)
                        
                        

                        
                }
                .navigationTitle("🍔Foodie")
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
                .frame(width: 120, height: 110)
        }
    }
}

struct CustomTextEditor: View {
    let placeholder: String
    @Binding var searchText: String
    let internalPadding: CGFloat = 5
    var body: some View {
        ZStack(alignment: .topLeading) {
            if searchText.isEmpty  {
                Text(placeholder)
                    .foregroundColor(Color.primary.opacity(0.25))
                    .padding(EdgeInsets(top: 7, leading: 4, bottom: 0, trailing: 0))
                    .padding(internalPadding)
            }
            TextEditor(text: $searchText)
                .padding(internalPadding)
        }.onAppear() {
            UITextView.appearance().backgroundColor = .clear
        }.onDisappear() {
            UITextView.appearance().backgroundColor = nil
        }
    }
}
