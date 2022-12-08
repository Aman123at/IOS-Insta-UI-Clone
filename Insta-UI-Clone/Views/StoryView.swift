//
//  StoryView.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

let storiesList:[StoryModel] = [
StoryModel(id: 1, username: "Elon Musk", image: "elon_musk", seen: false),
StoryModel(id: 2, username: "Jeff Bezos", image: "jeff", seen: false),
StoryModel(id: 3, username: "Sundar Pichai", image: "pichai", seen: true),
StoryModel(id: 4, username: "Satya Nadella", image: "satya", seen: true),
StoryModel(id: 5, username: "Virat Kohli", image: "virat", seen: true),
StoryModel(id: 6, username: "Rohit Sharma", image: "rohit", seen: true)
]

struct StoryView: View {
    let storiesList:[StoryModel]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                
                VStack(alignment: .center){
                    Image("nature")
                        .resizable()
                       
                    
                        .clipShape(Circle())
                        .frame(width: 80,height: 80,alignment: .trailing)
                        
                        .padding(5)
                        .overlay(
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 20,height: 20)
                                
                                .foregroundColor(.blue)
                                .offset(x: 32,y: 30)
                        )
                        

                    Text("Your Story")
                        
                    
                }.padding(.leading)
                
                
                ForEach(storiesList,id:\.id) { item in
                    Story(mystory: item)
                }
                
                
            }
           Divider()
            
        }
        
        
        
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storiesList:storiesList)
    }
}
