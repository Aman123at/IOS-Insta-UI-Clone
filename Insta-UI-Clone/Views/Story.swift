//
//  Story.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

let storyData:StoryModel = StoryModel(id: 1, username: "aman", image: "virat", seen: false)
struct Story: View {
    
    let mystory:StoryModel
    var body: some View {
        VStack(alignment: .center){
            Image(mystory.image)
                .resizable()
               
            
                .clipShape(Circle())
                .frame(width: 80,height: 80,alignment: .trailing)
                
                .padding(5)
                
                .overlay(Circle().stroke(!mystory.seen ? Color.red : Color.gray.opacity(0.5), lineWidth: 3))
                
                
            
            Text(mystory.username)
                
            
        }.padding(3)
        
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story(mystory:storyData)
    }
}
