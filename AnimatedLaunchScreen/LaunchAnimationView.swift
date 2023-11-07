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

    let animationCount = 4.0

    var body: some View {
        ZStack {
            Image("StarYellow")
                .resizable()
                .scaledToFill()
            Image("StarRed")
                .resizable()
                .scaledToFill()

                .opacity(animationAmount / animationCount)

                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true),
                    value: animationAmount
                )
        }
        .ignoresSafeArea()
        .onAppear {
            animationAmount = animationCount
        }
    }
}

// MARK: - LaunchAnimationView_Previews

struct LaunchAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchAnimationView()
    }
}
