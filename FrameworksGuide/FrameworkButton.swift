//
//  FrameworkButton.swift
//  FrameworksGuide
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

struct FrameworkButton: View {
    var title: String
    
    var body: some View {
        Text(title)
        .font(.title3)
        .foregroundColor(.white)
        .bold()
        .frame(width: 280, height: 50)
        .background(.red)
        .cornerRadius(10)
    }
}

#Preview {
    FrameworkButton(title: "Test Title")
}
