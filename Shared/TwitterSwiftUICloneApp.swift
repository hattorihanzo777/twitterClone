//
//  TwitterSwiftUICloneApp.swift
//  Shared
//
//  Created by Luka Bozanovic on 11.07.21.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUICloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
