//
//  ProfileView.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View
    {
        VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content:
        {
            // Profile Header
            HStack(alignment: .center, spacing: 26.0, content:
            {
                // Profile picture
                VStack
                {
                    Image("ProfilePhoto1")
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                    
                }
                
                // Profile info
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/, content: {
                    VStack
                    {
                        Text("22")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        Text("Posts")
                            .font(.system(size:12))
                    }
                    VStack
                    {
                        Text("316")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        Text("Followers")
                            .font(.system(size:12))
                    }
                    VStack
                    {
                        Text("374")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        Text("Following")
                            .font(.system(size:12))
                    }
                })
                
            })
            Text("R A I N I E R")
                .fontWeight(.medium)
                .alignmentGuide(.leading) { dimension in
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                }
            
            // Bio Here
            Text("I tried to tell everyone when I was a kid that I had powers - no one wanted to believe me...")
            
            // Photo content
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content:
            {
                Text("Photos here")
            })
            
        })
        
    }
}



struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
