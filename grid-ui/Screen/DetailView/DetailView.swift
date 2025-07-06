//
//  DetailView.swift
//  grid-ui
//
//  Created by Kaung Htet Hein on 04/07/2025.
//
import SwiftUI

struct DetailView: View {
    var item: ListItem
    @Binding var isShown: Bool
    @State private var isSafariPresented: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShown.toggle()
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .frame(width: 44, height: 44)
                        .imageScale(.large)
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView {
                GridItemView(item: item)
                Text(item.description)
                    .font(.body)
                    .padding()
            }.sheet(isPresented: $isSafariPresented) {
                if let url = URL(string: item.urlString) {
                    SafariView(url: url)
                }
                
            }
            
            Spacer()
            
            DetailButton {
                isSafariPresented.toggle()
            }
            
        }
    }
}

#Preview {
    DetailView(
        item: MockData.sampleItem,
        isShown: Binding.constant(false)
    )
    .preferredColorScheme(.dark) // Preview in dark mode
}
