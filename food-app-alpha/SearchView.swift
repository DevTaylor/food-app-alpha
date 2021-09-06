//
//  SearchView.swift
//  food-app-alpha
//
//  Created by Mark Martin on 7/25/21.
//

import SwiftUI
extension View {
func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
struct SearchView: View {
    
    @State private var showCard = true
    @State private var gesture = 0
    let posts = ["IMG1", "IMG2", "IMG3", "IMG4", "IMG5", "IMG6", "IMG7", "IMG8", "IMG9", "IMG10", "IMG11", "IMG12", "IMG13", "IMG14", "IMG15", "IMG10-1", "IMG11-1", "IMG12-1", "IMG13-1", "IMG14-1", "IMG15-1"]
    
    let categories = ["Burger", "Sushi", "Mexican", "Chicken", "Civeche", "Italian", "Dessert"]
    var body: some View {
//        NavigationView{
//            Text("Hello")
//        }ZStack
        
        VStack{
            ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(width:UIScreen.main.bounds.width, height: 50)


                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height:35)
            }
            ZStack{
                
                
                // PHOTOS
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
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
                })
                
                // Container for Card
                VStack
                {
                    Spacer()
                    
                    ZStack {
                        
                    }
                    
                    // Old Card
                    ZStack
                    {
                        // Card Background
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(25, corners: [.topLeft, .topRight])
                            .gesture(
                                    DragGesture()
                                        .onChanged { _ in
                                            
                                            showCard.toggle()
                                        }
                                )
                        
                        
                        // Card Content
                        VStack {
                            
                            // Drag tab pill
                            Capsule()
                                .fill(Color(red: 233/255, green: 233/255, blue: 233/255))
                                .frame(width:50, height: 5)
                                .padding(.top, 7)
                                .padding(.bottom, 5)
                                
                            if showCard
                            {
                                
                                // Search bar
                                ZStack
                                {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.gray, lineWidth: 0.5)
                                    HStack{
                                        Text(String(gesture))
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        
                                        Spacer()
                                    }.padding(.leading, 20)
                                    
                                }.frame(width: UIScreen.main.bounds.width-40, height: 50)
                                
                                
                                
                                // category buttons
                                ScrollView(.horizontal, showsIndicators: false, content:
                                {
                                    
                                    HStack
                                    {
                                        Spacer(minLength: 20)
                                        ForEach(categories, id: \.self)
                                        {
                                            category in
                                            VStack
                                            {
                                                Circle()
                                                    .fill(Color(red: 233/255, green: 233/255, blue: 233/255))
                                                    .frame(width:50, height:50)
                                                    
                                                Text(category)
                                                    .foregroundColor(.black)
                                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                    .font(.system(size: 10))
                                            }
                                        }
                                    }
                                    
                                }).frame(width: UIScreen.main.bounds.width, height: 120)
                            }
                        }
                    }.frame(width: UIScreen.main.bounds.width, height: showCard ? UIScreen.main.bounds.height / 4 : 30).animation(.spring())
                }
            }
        }
    }
    
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

// filter buttons
//                            HStack {
//                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
//                                    Text("Under 10 mi")
//                                        .fontWeight(.regular)
//                                        .font(.caption)
//                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                        .padding()
//                                        .foregroundColor(.black)
//                                        .background(Color(red: 233/255, green: 233/255, blue: 233/255))
//                                        .cornerRadius(40)
//                                        .foregroundColor(.white)
//
//                                }.padding(0).frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
//                                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
//                                    Text("$$$$$")
//                                        .fontWeight(.regular)
//                                        .font(.caption)
//                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                        .padding()
//                                        .foregroundColor(.black)
//                                        .background(Color(red: 233/255, green: 233/255, blue: 233/255))
//                                        .cornerRadius(40)
//                                        .foregroundColor(.white)
//
//                                }
//                            }
