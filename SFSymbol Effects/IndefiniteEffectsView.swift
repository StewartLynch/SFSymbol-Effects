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

struct IndefiniteEffectsView: View {
    @State private var trigger = false
    var body: some View {
        NavigationStack {
            Form {
                Section("Basic") {
                    Text("Pulse,VariablColor").font(.caption)
                    HStack {
                        Image(systemName: "heart.fill")
                            .symbolEffect(.pulse)
                        Image(systemName: "ellipsis")
                            .symbolEffect(.variableColor)
                        Image(systemName: "wifi")
                            .symbolEffect(
                                .variableColor
                                    .iterative
                                    .dimInactiveLayers
                                    .reversing
                            )
                    }
                    .font(.system(size: 80))
                    .foregroundStyle(.red)
                    .centered()
                }
                Section("With Triggers") {
                    Text("Pulse, Scale, appear/ disappear").font(.caption)
                    HStack {
                        Image(systemName: "heart.fill")
                            .symbolEffect(
                                .pulse,
                                isActive: trigger
                            )
                        Image(systemName: "hand.thumbsup.fill")
                            .symbolEffect(
                                .scale.up,
                                isActive: trigger
                            )
                        Image(systemName: "cloud.sun.rain.fill") .symbolRenderingMode(.palette)
                            .foregroundStyle(.gray, .orange, .blue)
//                            .opacity(trigger ? 0 : 1)
                            .symbolEffect(
                                .disappear.up,
                                isActive: trigger
                            )
                    }
                    .font(.system(size: 80))
                    .foregroundStyle(.green)
                    .centered()
                    .onTapGesture {
                        trigger.toggle()
                    }
                }
            }
            .navigationTitle("Indefinite")
        }
    }
}

#Preview {
    IndefiniteEffectsView()
}
