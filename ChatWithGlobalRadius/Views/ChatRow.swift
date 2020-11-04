//
//  ChatRow.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI

struct ChatRow: View {
    var chatData: MsgModel
    @AppStorage("current_user") var user = ""
    
    var body: some View {
        HStack(spacing: 15) {
            if chatData.user != user {
                NickName(name: chatData.user)
            } else { Spacer(minLength: 0) }
            
            VStack(alignment: chatData.user == user ? .trailing: .leading, spacing: 5) {
                Text(chatData.msg)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(myMsg: chatData.user == user))
                
                Text(chatData.timeStamp, style: .time)
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(chatData.user != user ? .leading: .trailing, 10)
            }
            
            if chatData.user == user {
                NickName(name: chatData.user)
            } else { Spacer(minLength: 0) }

        }
        .padding(.horizontal)
        .id(chatData.id)
    }
}

struct NickName: View {
    var name: String
    @AppStorage("current_user") var user = ""
    
    var body: some View {
        Text(String(name.first!))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .frame(width: 50, height: 50)
            .background((name == user ? Color.red: Color.green).opacity(0.85))
            .clipShape(Circle())
            .contentShape(Circle())
            .contextMenu {
                Text(name)
                    .fontWeight(.bold)
            }
    }
}
