//
//  Header.swift
//  Insta-UI-Clone
//
//  Created by Aman Tiwari on 22/10/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(alignment: .center){
            Image("insta2")
                .resizable()
                .scaledToFit()
                .frame(width: 130,height: 50)
                .padding(.leading)
            
            Spacer()
            HStack{
                Image(systemName: "plus.app")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30)
                
                NavigationLink{
                    ChatView()
                }label: {
                    Image(systemName: "message")
                        
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .padding(.leading,20)
                        .foregroundColor(.black)
                        
                }
                
                
                
            }.padding(.trailing)
        }
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
