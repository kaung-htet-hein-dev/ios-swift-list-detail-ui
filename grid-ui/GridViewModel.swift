//
//  GridViewModel.swift
//  grid-ui
//
//  Created by Kaung Htet Hein on 04/07/2025.
//

import Foundation

class GridViewModel: ObservableObject {
    var selectedItem: ListItem? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
