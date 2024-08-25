 //
//  ContentView.swift
//  wememo
//
//  Created by Otavio Lourenço on 25/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(lineWidth: 2 )
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 16)
            }
        }
    }
}


#Preview {
    ContentView()
}
