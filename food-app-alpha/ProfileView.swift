//
//  ProfileView.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI

struct ProfileView: View
{
    
    let posts = ["IMG1", "IMG2", "IMG3", "IMG4", "IMG5", "IMG6", "IMG7", "IMG8", "IMG9", "IMG10", "IMG11", "IMG12", "IMG13", "IMG14", "IMG15", "IMG10-1", "IMG11-1", "IMG12-1", "IMG13-1", "IMG14-1", "IMG15-1"]
    
    var body: some View
    {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content:
        {
            VStack
            {
                ZStack
                {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width:UIScreen.main.bounds.width, height: 30)


                    Text("R A I N I E R")
                        .fontWeight(.semibold)
                }
                
                // Profile Header
                HStack(alignment: .center, spacing: 49.0, content:
                        {
                            // Profile picture
                            VStack
                            {
                                Image("profile-photo-1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 110.0, height:110.0)
                                    


                            }
                            
//                             Profile info
                            HStack(alignment: .center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/15.0, content:
                                    {
                                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                                            Text("22")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                            Text("Posts")
                                                .font(.system(size:15))
                                        })
                                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content:
                                        {
                                            Text("316")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                            Text("Followers")
                                                .font(.system(size:15))
                                        })
                                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content:
                                        {
                                            Text("374")
                                                .font(.system(size: 18))
                                                .fontWeight(.bold)
                                            Text("Following")
                                                .font(.system(size:15))
                                        })


                                    })

                        })
                

                // Bio Here
                Text("I tried to tell everyone when I was a kid that I had powers - no one wanted to believe me...")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .frame(width: UIScreen.main.bounds.width * 0.80)
                    .padding(2)

//
//
//            }).padding(/*@START_MENU_TOKEN@*/.all, 3.0/*@END_MENU_TOKEN@*/).frame(maxWidth: .infinity)
//
            // Photo content


                LazyVGrid(
                    columns:
                    [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ],
                    spacing: 3)
                {
                    ForEach(posts, id: \.self)
                    {
                        post in Image(post)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3)
                            .clipShape(Rectangle())

                    }
                }
                
        }
    })
    
}



    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}
