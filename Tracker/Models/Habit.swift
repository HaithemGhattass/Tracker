//
//  Habit.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//


import SwiftUI

struct Habit: Identifiable {
    let id = UUID()
    var iconName: String
    var title: String
    var color: Color
}
