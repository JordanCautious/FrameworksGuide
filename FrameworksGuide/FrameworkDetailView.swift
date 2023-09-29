//
//  FrameworkDetailView.swift
//  FrameworksGuide
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button() {
                    
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
            
            Button {
                // Link area
            } label: {
                FrameworkButton(title: "Learn More")
            }
            
        }
    }
}

let Mds = MockData.sampleFramework

#Preview {
    FrameworkDetailView(framework: Mds)
}
