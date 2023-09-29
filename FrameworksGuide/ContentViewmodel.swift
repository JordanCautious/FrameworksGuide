//
//  ContentViewmodel.swift
//  FrameworksGuide
//
//  Created by Jordan Haynes on 9/29/23.
//

import SwiftUI

final class ContentViewmodel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
