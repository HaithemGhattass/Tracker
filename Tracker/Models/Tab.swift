//
//  Tab.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home, trade, chat, add, profile
}

struct TabItem: Identifiable {
    let id = UUID()
    let tab: Tab
    let icon: String
    let text: String
    let color: Color
}

