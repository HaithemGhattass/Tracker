//
//  SuggestionView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//
import SwiftUI

struct SuggestionView: View {
    @StateObject private var viewModel = SuggestionViewModel()

    @State private var myPlan: [Habit] = []
    var body: some View {
        VStack(spacing: 20) {
            // Close button
            CloseButtonView()
            
            // Background illustration
            Image("backgroundIllustration") // Replace with your illustration image
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .padding(.top, -40)
            
            SectionView(
                           title: "Our suggestions",
                           items: viewModel.suggestions,
                           emptyMessage: "No more suggestions",
                           action: viewModel.moveToMyPlan
                       )
                       
                       // My Plan Section
                       SectionView(
                           title: "My plan",
                           items: viewModel.myPlan,
                           emptyMessage: "No habits added yet.",
                           action: viewModel.moveToSuggestions,
                           isInMyPlan: true
                       )
            
            // Get Started button
            Button(action: {
                // Get started action
            }) {
                Text("Get started")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(20)
                    .shadow(radius: 5)
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
            
            Spacer()
        }
        .background(Color.yellow.opacity(0.2).edgesIgnoringSafeArea(.all))
    }


    
}
struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionViewWrapper()
            .previewLayout(.sizeThatFits)
    }
}

// Wrapper to initialize the view model with sample data
struct SuggestionViewWrapper: View {
    @StateObject private var viewModel = SuggestionViewModel()

    init() {
        let sampleSuggestions = [
            Habit(iconName: "dumbbell.fill", title: "Exercise", color: .orange),
            Habit(iconName: "applelogo", title: "Eat healthy", color: .yellow),
            Habit(iconName: "hand.raised.fill", title: "Treat yourself", color: .pink)
        ]
        
        let sampleMyPlan = [
            Habit(iconName: "book.fill", title: "Read daily", color: .blue)
        ]
        
        viewModel.suggestions = sampleSuggestions
        viewModel.myPlan = sampleMyPlan
    }
    var body: some View {
        SuggestionView()
            .environmentObject(viewModel)
    }
}
