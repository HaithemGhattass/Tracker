import Foundation
import SwiftUI

class CreatePlanViewModel: ObservableObject {
    
    @Published var options: [CreatePlanOptionItem] = {
        return [
            CreatePlanOptionItem(title: "Improve health", imageName: "healthImage", habits: createHabits(for: [
                ("dumbbell.fill", "Drink Water", Color.orange),
                ("applelogo", "Eat healthy", Color.yellow),
                ("hand.raised.fill", "Treat yourself", Color.pink)
            ])),
            
            CreatePlanOptionItem(title: "Reduce stress", imageName: "stressImage", habits: createHabits(for: [
                ("dumbbell.fill", "Journaling", Color.orange),
                ("applelogo", "Nature Walks", Color.yellow),
                ("hand.raised.fill", "Breathing Exercises", Color.pink)
            ])),
            
            CreatePlanOptionItem(title: "Lose weight", imageName: "weightImage", habits: createHabits(for: [
                ("dumbbell.fill", "Portion Control", Color.orange),
                ("applelogo", "Regular Workouts", Color.yellow),
                ("hand.raised.fill", "Track Progress", Color.pink)
            ])),
            
            CreatePlanOptionItem(title: "Get more productive", imageName: "productiveImage", habits: createHabits(for: [
                ("dumbbell.fill", "Set Daily Goals", Color.orange),
                ("applelogo", "Limit Distractions", Color.yellow),
                ("hand.raised.fill", "Review Weekly", Color.pink)
            ])),
            
            CreatePlanOptionItem(title: "Boost energy", imageName: "energyImage", habits: createHabits(for: [
                ("dumbbell.fill", "Healthy Snacks", Color.orange),
                ("applelogo", "Stay Active", Color.yellow),
                ("hand.raised.fill", "Limit Caffeine", Color.pink)
            ])),
            
            CreatePlanOptionItem(title: "Learn something", imageName: "learnImage", habits: createHabits(for: [
                ("dumbbell.fill", "Daily Reading", Color.orange),
                ("applelogo", "Podcasts", Color.yellow),
                ("hand.raised.fill", "Practice New Skills", Color.pink)
            ]))
        ]
    }()
    
    private static func createHabits(for data: [(String, String, Color)]) -> [Habit] {
        return data.map { Habit(iconName: $0.0, title: $0.1, color: $0.2) }
    }
}
