//
//  ContentView.swift
//  AnimatedLaunchScreen
//
//  Created by Ingo Boehme on 07.12.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Content Screen")
                .font(.largeTitle)
            Text("")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
