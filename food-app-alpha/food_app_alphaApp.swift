//
//  food_app_alphaApp.swift
//  food-app-alpha
//
//  Created by Rainier Dirawatun on 7/25/21.
//

import SwiftUI
import Parse

@main
struct food_app_alphaApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let configuration = ParseClientConfiguration {
            $0.applicationId = "zy94RFOSyRiZk7cN162uHZdplwJhuDHN9b5ktZXe"
            $0.clientKey = "nsRC44hzrIcp6coomqvmpLBBlZWDQ8onIpnhk1dj"
            $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: configuration)
        print("Parse configured...")
        
        return true
    }
}
