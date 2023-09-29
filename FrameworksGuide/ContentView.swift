//
//  ContentView.swift
//  FrameworksGuide
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    ContentView()
}
