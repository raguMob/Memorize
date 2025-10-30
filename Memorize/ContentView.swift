//
//  ContentView.swift
//  Memorize
//
//  Created by Usanka Ranasinghe on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🧟‍♀️", "🦇", "🕷️", "🧙‍♂️"]

    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true

    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)

            if isFaceUp {
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text(content).font(Font.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
