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

struct ContentTransitionEffectsView: View {
    @State private var trigger = false
    @State private var isLiked = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Content Transition") {
                    Text("Smooth transitions between images").font(.caption)
                    Button {
                        trigger.toggle()
                    } label: {
                            Image(systemName: trigger ?  "pause" : "play")
                                .symbolVariant(.fill)
                                .contentTransition(.symbolEffect(.replace))
                    }
                    .font(.system(size: 80))
                    .centered()
                }
                Section("Indefinite and Content Transition") {
                    Text("Compounding Effects").font(.caption)
                    Image(systemName: isLiked ?  "heart.fill" : "heart")
                        .symbolEffect(.bounce, value: isLiked)
                        .contentTransition(.symbolEffect(.replace))
                        .foregroundStyle(.red)
                        .font(.system(size: 80))
                        .centered(130)
                }
                .onTapGesture {
                    isLiked.toggle()
                }
            }
            .navigationTitle("Content Transition")
        }
    }
}

#Preview {
    ContentTransitionEffectsView()
}
