//
//  ContentView.swift
//  TextSwiftUI
//
//  Created by Artyom on 03.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: CGFloat = 200.0

    var body: some View {
        VStack {
            VStack {
                Text("Марафон ")
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                + Text("по SwiftUI ")
                    .fontWeight(.regular)
                + Text("«Отцовский пинок»")
                    .bold()
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .frame(width: sliderValue, height: 300)
            .border(Color.red)
            .multilineTextAlignment(.leading)
            
            Slider(value: $sliderValue, in: 100...300)
                .padding()

            Text("Ширина контейнера: \(Int(sliderValue)) pt")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
