//
//  ChatView.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 23/10/22.
//

import SwiftUI
var chatDataList:[ChatModel] = [
ChatModel(id: 1122, user: "Elon Musk", message: "New Tesla Model is here", img: "elon_musk"),
ChatModel(id: 2222, user: "Sundar Pichai", message: "Google Pixel is coming soon", img: "pichai"),
ChatModel(id: 3322, user: "Satya Nadella", message: "Windows new features", img: "satya"),
ChatModel(id: 4422, user: "Virat Kohli", message: "Lets play a new match", img: "virat"),
ChatModel(id: 5522, user: "Jeff Bezos", message: "Alexa new voice modules", img: "jeff"),
]
struct ChatView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            VStack{
                
                // header of chat
                HStack{
                    HStack{
                        Image(systemName: "arrow.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        
                        Text("user_name123")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading)
                    }
                    
                    Spacer()
                    HStack{
                        Image(systemName: "video")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30,height: 30)
                            .padding(.trailing)
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                    }
                    
                }.padding()
                
                
                //  search area
                
                RoundedRectangle(cornerRadius: 8)
                    
                    .frame(width: 350,height: 40)
                    .foregroundColor(.gray.opacity(0.3))
                    .overlay(
                        
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                
                            Spacer()
                                
                        }.padding()
                        
                    )
                
                HStack{
                    Text("Messages")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("Requests")
                        .foregroundColor(.blue)
                }.padding()
                
                
                
                // showing chats
                ScrollView{
                    ForEach(chatDataList,id:\.id){ item in
                        MessageRow(chats: item)
                        
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
