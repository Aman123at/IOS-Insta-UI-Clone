//
//  HomeScreen.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI
let allStories:[StoryModel] = [
StoryModel(id: 1, username: "Elon Musk", image: "elon_musk", seen: false),
StoryModel(id: 2, username: "Jeff Bezos", image: "jeff", seen: false),
StoryModel(id: 3, username: "Sundar Pichai", image: "pichai", seen: true),
StoryModel(id: 4, username: "Satya Nadella", image: "satya", seen: true),
StoryModel(id: 5, username: "Virat Kohli", image: "virat", seen: true),
StoryModel(id: 6, username: "Rohit Sharma", image: "rohit", seen: true)
]

let allPosts:[PostModel] = [
    PostModel(id: 1100, profileImg: "elon_musk", username: "Elon Musk", location: "Silicon Valley", postImg: "tesla", isLiked: true, likes: 1022, comments: 102, agoTime: 4, desc: "Launching tesla new model 🔥🔥"),
    PostModel(id: 2200, profileImg: "pichai", username: "Sundar Pichai", location: "Silicon Valley", postImg: "googlehq", isLiked: false, likes: 10512, comments: 152, agoTime: 1, desc: "Inside google headquarter "),
    PostModel(id: 3300, profileImg: "satya", username: "Satya Nadella", location: "Silicon Valley", postImg: "microsofthq", isLiked: true, likes: 4862, comments: 178, agoTime: 3, desc: "Microsoft HQ"),
    PostModel(id: 4400, profileImg: "virat", username: "Virat Kohli", location: "Delhi", postImg: "vk", isLiked: false, likes: 8935, comments: 1034, agoTime: 8, desc: "Practice mode on 🏏"),
    PostModel(id: 5500, profileImg: "rohit", username: "Rohit Sharma", location: "Mumbai", postImg: "rohitpost", isLiked: false, likes: 9054, comments: 188, agoTime: 5, desc: "Making centuries for fun 🏏"),
]
            
struct HomeScreen: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Header()
                    ScrollView(.vertical){
                        StoryView(storiesList: allStories)
                        
                        PostView(postData: allPosts)
                    }
                    BottomTab()
                    

                }
                            }
            
        }.navigationBarHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
