//
//  PostCard.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

let sampleData:PostModel = PostModel(id: 10, profileImg: "virat", username: "Virat Kohli", location: "Mumbai",postImg:"rohit", isLiked: true, likes: 300, comments: 166, agoTime: 2,desc: "I am description here this is moreover on the text side where we need to show multiline as well")

struct PostCardViewMain: View {
    @State var liked:Bool = sampleData.isLiked
    @State var doubleTapped:Bool = false
    let data:PostModel
    var body: some View {
        VStack(alignment: .center){
            HStack{
                HStack{
                    Image(data.profileImg)
                        .resizable()
                       
                    
                        .clipShape(Circle())
                        .frame(width: 45,height: 45)
                        
                        .padding(3)
                        
                        .overlay(Circle().stroke(Color.red, lineWidth: 2))
                    
                    
                    VStack(alignment: .leading){
                        Text(data.username)
                            .font(.system(.headline))
                        Text(data.location)
                            .font(.subheadline)
                            
                        
                    }
                }.padding(.leading)
                
                Spacer()
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle(degrees: 270.0))
                
                    .padding(.trailing)
            }
            
            
            // post image
            Image(data.postImg)
                .resizable()
                .frame(width: .infinity,height: 450)
                .overlay(
                    
                    Image(systemName:doubleTapped ? "heart.fill":"")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 80,height: 80)
                
                )
                .gesture(TapGesture(count: 2).onEnded {
                    doubleTapped = true
                    liked = true
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        doubleTapped = false
                        
                    }
                            })
            
            
            // like , comment , share buttons
            HStack{
                HStack{
                    Image(systemName: liked ? "heart.fill":"heart")
                        .resizable()
                        .foregroundColor(liked ? .red : .black)
                        .frame(width: 25,height: 25)
                        .onTapGesture {
                            liked = !liked
                        }
                    
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        .padding(.leading,10)
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 25,height: 25)
                        .padding(.leading,10)
                }
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 20,height: 25)
                    
                
            }.padding([.leading,.trailing])
                
                .padding(.top,5)
            
            
            
            // likes count
            HStack{
                Text("\(data.likes) likes")
                    
                    .fontWeight(.bold)
                Spacer()
            }.padding(.leading)
            // description
            HStack{

                Text("**\(data.username)** \(data.desc)")
                    .fontWeight(.light)
                    
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }.padding(.leading)
            // comments count
            
            HStack{
                Text("View all \(data.comments) comments")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
                Spacer()
            }.padding(.leading)
                .padding(.top,1)
            HStack{
                Text("\(data.agoTime) hours ago")
                    .foregroundColor(.black)
                    .font(.system(size: 12))
                Spacer()
            }.padding(.leading)
 
        }.padding(.bottom).padding(.top,2)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCardViewMain(data:sampleData)
    }
}
