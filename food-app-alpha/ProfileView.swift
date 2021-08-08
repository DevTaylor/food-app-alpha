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
        VStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content:
        {
            // Profile Header
            HStack(alignment: .center, spacing: 3.0, content:
            {
                // Profile picture
                VStack
                {
                    Image("ProfilePhoto1")
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text("R A I N I E R")
                    
                }
                
                // Profile info
                HStack
                {
                    VStack
                    {
                        Text("22")
                            .fontWeight(.bold)
                        Text("Posts")
                    }
                    VStack
                    {
                        Text("316")
                            .fontWeight(.bold)
                        Text("Followers")
                    }
                    VStack
                    {
                        Text("374")
                            .fontWeight(.bold)
                        Text("Following")
                    }
                }
            })
            
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
