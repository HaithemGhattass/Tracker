//
//  TabButton.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct TabButton: View {
    let item: TabItem
    @ObservedObject var viewModel: TabBarViewModel
    
    var body: some View {
        Button {
            viewModel.selectTab(item)
        } label: {
            VStack(spacing: 0) {
                Image(systemName: item.icon)
                    .symbolVariant(.fill)
                    .font(.body.bold())
                    .frame(width: 44, height: 29)
                Text(item.text)
                    .font(.caption2)
                    .lineLimit(1)
            }
            .frame(maxWidth: .infinity)
        }
        .foregroundStyle(viewModel.selectedTab == item.tab ? .primary : .secondary)
        .blendMode(viewModel.selectedTab == item.tab ? .overlay : .normal)
        .overlay(
            GeometryReader { proxy in
                Color.clear
                    .preference(key: TabPreferenceKey.self, value: proxy.size.width)
            }
        )
        .onPreferenceChange(TabPreferenceKey.self) { value in
            viewModel.tabItemWidth = value
        }
    }
}

