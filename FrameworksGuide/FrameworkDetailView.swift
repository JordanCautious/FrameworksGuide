//
//  FrameworkDetailView.swift
//  FrameworksGuide
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.openURL) var openURL
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button() {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button("Learn More", systemImage: "gear") {
                openURL(URL(string: framework.urlString)!)
            }
            .font(.title3)
            .foregroundColor(.white)
            .bold()
            .frame(width: 280, height: 50)
            .background(.red)
            .cornerRadius(10)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
