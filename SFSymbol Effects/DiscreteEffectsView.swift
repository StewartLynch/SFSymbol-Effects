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

struct DiscreteEffectsView: View {
    @State private var discreteTrigger1 = 0
    @State private var discreteTrigger2 = false
    var body: some View {
        NavigationStack {
            Form {
                Section("Basic") {
                    Text("Bounce, Pulse and VariablColor").font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .symbolEffect(
                                .bounce,
                                value: discreteTrigger1
                            )
                        Image(systemName: "heart.fill")
                            .symbolEffect(
                                .pulse,
                                value: discreteTrigger1
                            )
                        Image(systemName: "rainbow")
                            .symbolRenderingMode(.multicolor)
                            .symbolEffect(
                                .variableColor,
                                value: discreteTrigger1
                            )
                        Image(systemName: "person.3.sequence.fill")
                            .symbolEffect(
                                .variableColor,
                                value: discreteTrigger1
                            )
                    }
                    .font(.system(size: 50))
                    .foregroundStyle(.red)
                    .centered()
                    .onTapGesture {
                        discreteTrigger1 += 1
                    }
                }
                Section("With Options") {
                    Text("Repeating, repeat, speed").font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .symbolEffect(
                                .bounce,
                                options: .repeating,
                                value: discreteTrigger2
                            )
                        Image(systemName: "heart.fill")
                            .symbolEffect(
                                .pulse,
                                options: .repeat(3),
                                value: discreteTrigger2
                            )
                        Image(systemName: "homekit")
                            .symbolRenderingMode(.multicolor)
                            .symbolEffect(
                                .variableColor,
                                options: .speed(4.5),
                                value: discreteTrigger2
                            )
                        Image(systemName: "wifi")
                            .symbolEffect(
                                .variableColor,
                                options: .speed(5).repeat(3),
                                value: discreteTrigger2
                            )
                    }
                    .font(.system(size: 60))
                    .foregroundStyle(.green)
                    .centered()
                    .onTapGesture {
                        discreteTrigger2.toggle()
                    }
                }
            }
            .navigationTitle("Discrete")
        }
    }
}

#Preview {
    DiscreteEffectsView()
}
