//
//  TabBackground.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI
struct TabBackground: View {
    @ObservedObject var viewModel: TabBarViewModel

    var body: some View {
        HStack {
            ForEach(0..<viewModel.tabPosition, id: \.self) { _ in Spacer() }
            Circle()
                .fill(viewModel.color)
                .frame(width: viewModel.tabItemWidth)
            ForEach(0..<(4 - viewModel.tabPosition), id: \.self) { _ in Spacer() }
        }
        .padding(.horizontal, 8)
    }
}

