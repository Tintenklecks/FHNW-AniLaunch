//
//  LaunchAnimationView.swift
//  AnimatedLaunchScreen
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

// MARK: - LaunchAnimationView

struct LaunchAnimationView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        ZStack {
            Image("Splash")
                .resizable()
                .scaledToFill()
            Image("Drop")
                .resizable()
                .scaledToFill()

                    .opacity(animationAmount / 4)

//                    .scaleEffect(animationAmount )
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true),
                    value: animationAmount
                )
        }
        .ignoresSafeArea()
        .onAppear {
            animationAmount = 4.0
        }
    }
}

// MARK: - LaunchAnimationView_Previews

struct LaunchAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchAnimationView()
    }
}
