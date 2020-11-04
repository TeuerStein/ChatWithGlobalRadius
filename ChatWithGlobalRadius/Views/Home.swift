//
//  Home.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeModel()
    
    var body: some View {
        VStack {
            Text("Home Page")
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
