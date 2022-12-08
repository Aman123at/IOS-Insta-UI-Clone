//
//  PostView.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

let postViewList:[PostModel] = [
    PostModel(id: 1100, profileImg: "elon_musk", username: "Elon Musk", location: "Silicon Valley", postImg: "tesla", isLiked: true, likes: 1022, comments: 102, agoTime: 4, desc: "Launching tesla new model 🔥🔥"),
    PostModel(id: 2200, profileImg: "pichai", username: "Sundar Pichai", location: "Silicon Valley", postImg: "googlehq", isLiked: false, likes: 10512, comments: 152, agoTime: 1, desc: "Inside google headquarter "),
    PostModel(id: 3300, profileImg: "satya", username: "Satya Nadella", location: "Silicon Valley", postImg: "microsofthq", isLiked: true, likes: 4862, comments: 178, agoTime: 3, desc: "Microsoft HQ"),
    PostModel(id: 4400, profileImg: "virat", username: "Virat Kohli", location: "Delhi", postImg: "vk", isLiked: false, likes: 8935, comments: 1034, agoTime: 8, desc: "Practice mode on 🏏"),
    PostModel(id: 5500, profileImg: "rohit", username: "Rohit Sharma", location: "Mumbai", postImg: "rohitpost", isLiked: false, likes: 9054, comments: 188, agoTime: 5, desc: "Making centuries for fun 🏏"),
]
struct PostView: View {
    let postData:[PostModel]
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            ForEach(postData,id:\.id) { item in
                PostCardViewMain(data:item)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(postData:postViewList)
    }
}
