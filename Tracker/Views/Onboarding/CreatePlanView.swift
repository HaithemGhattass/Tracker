//
//  CreatePlanView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 30/10/2024.
//

import SwiftUI

struct CreatePlanView: View {
    @Environment(\.dismiss) var dismiss

    let options = [
        ("Improve health", "healthImage"),
        ("Reduce stress", "stressImage"),
        ("Lose weight", "weightImage"),
        ("Get more productive", "productiveImage"),
        ("Boost energy", "energyImage"),
        ("Learn\nsomething", "learnImage")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            // Top Image and Background
            HeaderView(dismiss: dismiss)
            
            // Title
            Text("Which area of your life do you want to start improving?")
                .font(.system(size: 20, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            // Grid of Options
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(options, id: \.0) { option in
                    NavigationLink(destination: DetailView(selectedOption: option.0)) {
                        OptionGridItem(title: option.0, imageName: option.1)
                    }
                }
            }
            .padding(.horizontal, 20)
            Spacer()
        }
        .background(Color(UIColor.systemYellow).opacity(0.1))
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CreatePlanView()
}
