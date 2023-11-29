//
//  LaunchAnimationView.swift
//  AnimatedLaunchScreen
//
//  Created by Ingo Boehme on 07.12.22.
//

import Lottie
import SwiftUI

// MARK: - LaunchAnimationView

struct LaunchAnimationView: View {
    @State private var fadein = 0.0

    var body: some View {
        ZStack {
            
            LottieSUIView(animationName: "world.json")
                .opacity(fadein)
                .animation(
                    Animation.easeOut(duration: 3),
                    value: fadein
                )
        }
        .background(Color.orange.opacity(fadein / 5))

        .ignoresSafeArea()
        .onAppear {
            fadein = 1
        }
    }
}

// MARK: - LaunchAnimationView_Previews

struct LaunchAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchAnimationView()
    }
}
