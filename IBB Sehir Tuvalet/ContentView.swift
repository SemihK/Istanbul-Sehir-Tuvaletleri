//
//  ContentView.swift
//  Istanbul City Toilets
//
//  Created by Semih Kesgin on 21.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            } else {
                // Fallback on earlier versions
            }
            Text("Hello, world!")
        }
        .padding()
    }
}


