//
//  Home.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeModel()
    @AppStorage("current_user") var user = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(homeData.msgs) { msg in
                    Text(msg.msg)
                }
            }
        }
            .onAppear(perform: {
                homeData.onAppear()
            })
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
