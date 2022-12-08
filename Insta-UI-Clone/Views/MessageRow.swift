//
//  MessageRow.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 23/10/22.
//

import SwiftUI
let chatData:ChatModel = ChatModel(id: 11, user: "Elon Musk", message: "THis is new tesla model", img: "elon_musk")
struct MessageRow: View {
    var chats:ChatModel = chatData
    var body: some View {
        HStack{
            HStack{
                Image(chats.img)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60,height: 60,alignment: .leading)
                
                
                VStack(alignment: .leading){
                    Text(chats.user)
                        .fontWeight(.semibold)
                    Text(chats.message)
                    
                }.padding(.leading)
            }
            
            
            Spacer()
            Image(systemName: "camera")
                .resizable()
                .scaledToFit()
                .frame(width: 30,height: 30)
        }.padding([.leading,.trailing])
            .padding([.top,.bottom],5)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(chats:chatData)
    }
}
