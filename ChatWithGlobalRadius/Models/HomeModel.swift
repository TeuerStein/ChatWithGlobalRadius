//
//  HomeModel.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI
import Firebase

class HomeModel: ObservableObject {
    @Published var msgs: [MsgModel] = []
    @AppStorage("current_user") var user = ""
    
    func onAppear() {
        if user == "" {
            UIApplication.shared.windows.first?.rootViewController?.present(alertView(), animated: true)
        }
    }
    
    func alertView() -> UIAlertController {
        let alert = UIAlertController(title: "Join Chat", message: "Enter Nick Name", preferredStyle: .alert)
        
        alert.addTextField { (txt) in
            txt.placeholder = "Your Nickname will be..."
        }
        
        let join = UIAlertAction(title: "Join", style: .default) { (_) in
            let user = alert.textFields![0].text ?? ""
            
            if user != "" {
                self.user = user
                return
            }
            
            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
        }
        
        alert.addAction(join)
        
        return alert
    }
}
