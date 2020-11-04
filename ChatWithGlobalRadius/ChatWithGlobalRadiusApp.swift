//
//  ChatWithGlobalRadiusApp.swift
//  ChatWithGlobalRadius
//
//  Created by ALEXANDR DRAGUNOV on 11/4/20.
//

import SwiftUI
import Firebase

@main
struct ChatWithGlobalRadiusApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
