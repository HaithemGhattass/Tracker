//
//  TabBar.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI

struct TabBar: View {
    @StateObject private var viewModel = TabBarViewModel()
    
    var body: some View {
        HStack {
            ForEach(viewModel.tabItems) { item in
                TabButton(item: item, viewModel: viewModel)
            }
        }
        .padding(.horizontal, 8)
        .padding(.top, 14)
        .frame(height: 88, alignment: .top)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
        .background(TabBackground(viewModel: viewModel))
        .overlay(TabOverlay(viewModel: viewModel))
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    TabBar()
}
