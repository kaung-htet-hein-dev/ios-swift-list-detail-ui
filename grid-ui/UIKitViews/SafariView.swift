//
//  SafariView.swift
//  grid-ui
//
//  Created by Kaung Htet Hein on 05/07/2025.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No update needed
    }
    
}

#Preview {
    SafariView(url: URL(string: "https://www.google.com")!)
}
