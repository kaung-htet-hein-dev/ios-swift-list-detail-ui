//
//  Button.swift
//  grid-ui
//
//  Created by Kaung Htet Hein on 04/07/2025.
//

import SwiftUI

struct DetailButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button {
            action()
        } label: {
            Text("Learn More")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    DetailButton()
}
