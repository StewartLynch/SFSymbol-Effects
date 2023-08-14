//
// Created for Symbol Animations
// by  Stewart Lynch on 2023-08-12
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct StartTabView: View {
    var body: some View {
        TabView {
            DiscreteEffectsView()
                .tabItem {
                    Label("Discrete", systemImage: "1.circle.fill")
                }
            IndefiniteEffectsView()
                .tabItem {
                    Label("Indefinite", systemImage: "2.circle.fill")
                }
            ContentTransitionEffectsView()
                .tabItem {
                    Label("Content Transition", systemImage: "3.circle.fill") }
        }
    }
}

#Preview {
    StartTabView()
}
