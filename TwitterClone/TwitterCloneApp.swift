//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Çare C. on 2.04.2023.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
