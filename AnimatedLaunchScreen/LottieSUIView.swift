// Created 29.11.2023 

import SwiftUI
import Lottie

struct LottieSUIView: UIViewRepresentable {
    let animationName: String

    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        let lottieAnimationView = LottieAnimationView()
        let animation = LottieAnimation.named(animationName)
        lottieAnimationView.animation = animation
        lottieAnimationView.contentMode = .scaleAspectFit
        lottieAnimationView.loopMode = .loop
        lottieAnimationView.animationSpeed = 2.0
        lottieAnimationView.play()
         
        lottieAnimationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lottieAnimationView)
         
        NSLayoutConstraint.activate([
          lottieAnimationView.widthAnchor.constraint(equalTo: view.widthAnchor),
          lottieAnimationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
         
        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Update the view if needed
    
    }
}

