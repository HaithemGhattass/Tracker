//
//  SuggestionView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//
import SwiftUI

import SwiftUI

struct SuggestionView: View {
    @StateObject private var viewModel = SuggestionViewModel()
    let selectedOption: CreatePlanOptionItem

    var body: some View {
        VStack(spacing: 20) {
            // Close button
            CloseButtonView()
            .onAppear {
                viewModel.suggestions = selectedOption.habits
            }
            SectionView(
                title: "Our suggestions",
                items: viewModel.suggestions,
                emptyMessage: "No more suggestions",
                action: viewModel.moveToMyPlan
            )
            SectionView(
                title: "My plan",
                items: viewModel.myPlan,
                emptyMessage: "No habits added yet.",
                action: viewModel.moveToSuggestions,
                isInMyPlan: true
            )
            Spacer()
            NavigationLink(destination: OnboardingView()) {
                Text("Get started")
                    .font(.system(size: 18, weight: .semibold))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
            }
            .padding(.horizontal, 20)
        }
        .background(Color.yellow.opacity(0.2).edgesIgnoringSafeArea(.all))
    }
}
