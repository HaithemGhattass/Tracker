//
//  SuggestionViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//

import SwiftUI

class SuggestionViewModel: ObservableObject {
    @Published var myPlan: [Habit] = []
    @Published var suggestions: [Habit] = [] // This should hold your suggestions

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
