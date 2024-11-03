//
//  CreatePlanViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import Foundation

class CreatePlanViewModel: ObservableObject {


    @Published var options: [CreatePlanOptionItem] = [
        CreatePlanOptionItem(title: "Improve health", imageName: "healthImage", habits: [

            Habit(iconName: "dumbbell.fill", title: "Drink Water", color: .orange),
            Habit(iconName: "applelogo", title: "Eat healthy", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Treat yourself", color: .pink)
        ]),
        
        CreatePlanOptionItem(title: "Reduce stress", imageName: "stressImage", habits: [
            Habit(iconName: "dumbbell.fill", title: "Journaling", color: .orange),
            Habit(iconName: "applelogo", title: "Nature Walks", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Breathing Exercises", color: .pink)

        ]),
        
        CreatePlanOptionItem(title: "Lose weight", imageName: "weightImage", habits: [
            Habit(iconName: "dumbbell.fill", title: "Portion Control", color: .orange),
            Habit(iconName: "applelogo", title: "Regular Workouts", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Track Progress", color: .pink)

        ]),
        
        CreatePlanOptionItem(title: "Get more productive", imageName: "productiveImage", habits: [
            Habit(iconName: "dumbbell.fill", title: "Set Daily Goals", color: .orange),
            Habit(iconName: "applelogo", title: "Limit Distractions", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Review Weekly", color: .pink)

        ]),
        
        CreatePlanOptionItem(title: "Boost energy", imageName: "energyImage", habits: [
            Habit(iconName: "dumbbell.fill", title: "Healthy Snacks", color: .orange),
            Habit(iconName: "applelogo", title: "Stay Active", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Limit Caffeine", color: .pink)

        ]),
        
        CreatePlanOptionItem(title: "Learn something", imageName: "learnImage", habits: [
            Habit(iconName: "dumbbell.fill", title: "Daily Reading", color: .orange),
            Habit(iconName: "applelogo", title: "Podcasts and Audiobooks", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Practice New Skills", color: .pink)

        ])
]
}

