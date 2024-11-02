//
//  SuggestionViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//

import SwiftUI

class SuggestionViewModel: ObservableObject {
    @Published var suggestions: [Habit] = [
        Habit(iconName: "dumbbell.fill", title: "Exercise", color: .orange),
        Habit(iconName: "applelogo", title: "Eat healthy", color: .yellow),
        Habit(iconName: "hand.raised.fill", title: "Treat yourself", color: .pink)
    ]
    @Published var myPlan: [Habit] = []
    
    func moveToMyPlan(_ habit: Habit) {
        if let index = suggestions.firstIndex(where: { $0.id == habit.id }) {
            suggestions.remove(at: index)
            myPlan.append(habit)
        }
    }
    
    func moveToSuggestions(_ habit: Habit) {
        if let index = myPlan.firstIndex(where: { $0.id == habit.id }) {
            myPlan.remove(at: index)
            suggestions.append(habit)
        }
    }
}
