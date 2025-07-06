//
//  ContentView.swift
//  grid-ui
//
//  Created by Kaung Htet Hein on 04/07/2025.
//

import SwiftUI

struct GridView: View {
    @StateObject private var viewModel = GridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    
                    ForEach(MockData.items, id: \.id) { item in
                        
                        GridItemView(item: item).onTapGesture {
                            viewModel.selectedItem = item
                        }
                        
                    }
                    
                }
                .navigationTitle("Grid View")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    if let selectedItem = viewModel.selectedItem {
                        DetailView(item: selectedItem, isShown: $viewModel.isShowingDetailView)
                    }
                }
            }
            .scrollIndicators(ScrollIndicatorVisibility.hidden)
        }
        
    }
}

struct GridItemView: View {
    let item: ListItem
    
    var body: some View {
        VStack {
            Image(item.imageName).resizable().frame(width: 100, height: 100)
            Text(item.name).font(.title2).fontWeight(.semibold).scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    GridView().preferredColorScheme(.dark) // Preview in dark mode
}

