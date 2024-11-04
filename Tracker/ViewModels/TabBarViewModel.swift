//
//  TabBarViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 4/11/2024.
//
import SwiftUI

final class TabBarViewModel: ObservableObject {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @Published var color: Color = .teal
    @Published var tabItemWidth: CGFloat = 0
    
    let tabItems: [TabItem] = [
        TabItem(tab: .home, icon: "house.fill", text: "Home", color: .teal),
        TabItem(tab: .trade, icon: "chart.bar.fill", text: "Trade", color: .blue),
        TabItem(tab: .chat, icon: "message.fill", text: "Chat", color: .purple),
        TabItem(tab: .add, icon: "plus.circle.fill", text: "Add", color: .orange),
        TabItem(tab: .profile, icon: "person.fill", text: "Profile", color: .pink)
    ]
    
    var tabPosition: Int {
        tabItems.firstIndex(where: { $0.tab == selectedTab }) ?? 0
    }
    
    func selectTab(_ tabItem: TabItem) {
        withAnimation(.spring(response: 0.3, dampingFraction: 0.5)) {
            selectedTab = tabItem.tab
            color = tabItem.color
        }
    }
}
