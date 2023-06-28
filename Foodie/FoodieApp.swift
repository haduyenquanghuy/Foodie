//
//  FoodieApp.swift
//  Foodie
//
//  Created by Ha Duyen Quang Huy on 26/06/2023.
//

import SwiftUI

@main
struct FoodieApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthView(viewModel: AuthViewModel(.login))
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        return true
    }
}
