//
//  CreatePlanViewModel.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import Foundation
class MainViewModel: ObservableObject {
    @Published var improvementOptions: [ImprovementOption] = [
        ImprovementOption(title: "Improve health", imageName: "healthImage"),
        ImprovementOption(title: "Reduce stress", imageName: "stressImage"),
        ImprovementOption(title: "Lose weight", imageName: "weightImage"),
        ImprovementOption(title: "Get more productive", imageName: "productiveImage"),
        ImprovementOption(title: "Boost energy", imageName: "energyImage"),
        ImprovementOption(title: "Learn\nsomething", imageName: "learnImage")
    ]
}
