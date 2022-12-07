//
//  AnimatedLaunchScreenApp.swift
//  AnimatedLaunchScreen
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

@main
struct AnimatedLaunchScreenApp: App {
    @State private var showApp = false
    var body: some Scene {
        WindowGroup {
            if showApp {
                ContentView()
            } else {
                LaunchAnimationView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            showApp.toggle()
                        }
                    }
        
            }
        }
    }
}
