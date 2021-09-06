//
//  EditProfile.swift
//  food-app-alpha
//
//  Created by Rainier Dirawatun on 9/3/21.
//

import SwiftUI
import Parse

struct EditProfile: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var nameFieldText: String
    @Binding var usernameFieldText: String
    @Binding var websiteFieldText: String
    @Binding var bioFieldText: String
    
    var body: some View {
        
        
        // Container
        VStack {
            
//            // Nav
//            HStack {
//                Text("Cancel").onTapGesture {
//                    print("Cancel")
//                }
//                Spacer()
//                Text("Edit Profile")
//                    .bold()
//                Spacer()
//                Text("Done")
//                    .bold()
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//
//            }.padding(12)
            
            Divider()
            // Profile Picture & Change Btn
            Image("profile-photo-1")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 110.0, height:110.0)
            
            Text("Change Profile Photo")
                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    // call picker
                    
                }
            
            Divider()
            
            // Inputs //////
            HStack {
                VStack(spacing: 29){
                    Text("Name").frame(maxWidth: 130, alignment: .leading)
                    Text("Username").frame(maxWidth: 130, alignment: .leading)
                    Text("Website").frame(maxWidth: 130, alignment: .leading)
                    Text("Bio").frame(maxWidth: 130, alignment: .leading)
                    
                }
                Spacer()
                VStack(alignment: .leading, spacing: 9, content: {
                    
                        TextField(nameFieldText, text: $nameFieldText)
                            .frame(width: 270, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Divider()
                        TextField(usernameFieldText, text: $usernameFieldText)
                            .frame(width: 270, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).textCase(.lowercase)
                        Divider()
                        TextField(websiteFieldText, text: $websiteFieldText)
                            .frame(width: 270, height: 30, alignment: .center)
                        Divider()
                        TextField(bioFieldText, text: $bioFieldText)
                                       .frame(width: 270, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 170, alignment: .leading)
            }.padding(16)
            Divider()
            Button("Save"){
                updateProfileHeader(name: nameFieldText, username: usernameFieldText, website: websiteFieldText, bio: bioFieldText)
                self.presentationMode.wrappedValue.dismiss()
                print("saved!")
            }
            
            // press back button here
            Spacer()
        }
        
        
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile(nameFieldText: .constant(""), usernameFieldText:.constant(""), websiteFieldText: .constant(""), bioFieldText: .constant(""))
    }
}

func updateDatabase(){
   // update the database
    print("database updated!")

}

func updateProfileHeader(name: String, username: String, website: String, bio: String){
    let query = PFQuery(className:"ProfileHeader")
    
    query.getObjectInBackground(withId: "s2Hudf19ux") { (profileHeader: PFObject?, error: Error?) in
        if let error = error {
            print(error.localizedDescription)
        } else if let profileHeader = profileHeader {
            
            
            // handle profile photo
            let image:UIImage? = UIImage(named: "profile-photo-1")
            
            if let profileImage = image {
                
                // Gets mage DATA
                let imagedata = profileImage.jpegData(compressionQuality: 1)
                
                // Now we need to set the image data to a key of the PFObject
                let file = PFFileObject(name: "profile-photo-1.jpeg", data: imagedata!)
                
                profileHeader["profile_photo"] = file
            }
            
            profileHeader["name"] = name
            profileHeader["username"] = username
            profileHeader["website"] = website
            profileHeader["bio"] = bio
            profileHeader.saveInBackground()
        }
    }
}
