//
//  Tab.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//

import SwiftUI

struct TabItem : Identifiable {
    var id = UUID()
    var text : String
    var icon : String
    var tab : Tab
    var color : Color
}

var tabItems = [
    TabItem(text: "Home", icon: "house", tab: .home, color: .teal),
    TabItem(text: "Chat", icon: "message.fill", tab: .chat, color: .pink),
    TabItem(text: "Add", icon: "plus.circle", tab: .add ,color: .red),
    TabItem(text: "trade", icon: "t.circle", tab: .trade, color: .pink),
    TabItem(text: "Profile", icon: "person.circle.fill", tab: .profile, color: .blue),

]

enum Tab: String {
    case home
    case add
    case profile
    case trade
    case chat
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
