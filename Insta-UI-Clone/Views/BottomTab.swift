//
//  BottomTab.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

struct BottomTab: View {
    var body: some View {
        VStack{
            Divider()
            HStack{
                NavigationLink {
                    HomeScreen()
                } label: {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .foregroundColor(.black)
                }

                
                Spacer()
                NavigationLink{
                    Text("Search page")
                    BottomTab()
                }label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .foregroundColor(.black)
                }
                
                Spacer()
                NavigationLink{
                    Text("Reels page")
                }label: {
                    Image(systemName: "play.square")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .foregroundColor(.black)
                }
                
                Spacer()
                NavigationLink{
                    Text("Notifications page")
                }label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .foregroundColor(.black)
                }
                
                Spacer()
                NavigationLink{
                    Text("Profile page")
                }label: {
                    Image("nature")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 35,height: 35)
                }
                
                
            }.padding([.leading,.trailing],20)
                
        }
        
    }
}

struct BottomTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomTab()
    }
}
