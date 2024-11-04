//
//  TabOverlay.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI

struct TabOverlay: View {
    @ObservedObject var viewModel: TabBarViewModel

    var body: some View {
        HStack {
            ForEach(0..<viewModel.tabPosition, id: \.self) { _ in Spacer() }
            Rectangle()
                .fill(viewModel.color)
                .frame(width: 28, height: 5)
                .cornerRadius(3)
                .frame(width: viewModel.tabItemWidth)
                .frame(maxHeight: .infinity, alignment: .top)
            ForEach(0..<(4 - viewModel.tabPosition), id: \.self) { _ in Spacer() }
        }
        .padding(.horizontal, 8)
    }
}
