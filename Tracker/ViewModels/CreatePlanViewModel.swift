//
//  CreatePlanViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import Foundation

class CreatePlanViewModel: ObservableObject {
    @Published var options: [CreatePlanOptionItem] = [
        CreatePlanOptionItem(title: "Improve health", imageName: "healthImage"),
        CreatePlanOptionItem(title: "Reduce stress", imageName: "stressImage"),
        CreatePlanOptionItem(title: "Lose weight", imageName: "weightImage"),
        CreatePlanOptionItem(title: "Get more productive", imageName: "productiveImage"),
        CreatePlanOptionItem(title: "Boost energy", imageName: "energyImage"),
        CreatePlanOptionItem(title: "Learn\nsomething", imageName: "learnImage")
    ]
}

