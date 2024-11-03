//
//  DetailView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import SwiftUI

struct TimeOption: Identifiable, Equatable {
    let id = UUID()
    let title: String
}

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    let selectedOption: CreatePlanOptionItem
    
    // State variable to track the selected time option
    @State private var selectedTimeOption: TimeOption?

    // Define available time options
    private let timeOptions = [
        TimeOption(title: "5 to 10 minutes"),
        TimeOption(title: "10 to 30 minutes"),
        TimeOption(title: "30 minutes to 1 hour")
    ]

    var body: some View {
        VStack(spacing: 20) {
            // Top Image and Dismiss Button
            ZStack {
                Color.orange.opacity(0.2)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 200)
                
                CloseButtonView()
                
                Image("characterImage") // Replace with the actual image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .offset(y: -40)
            }
            
            // Title based on selected option
            Text("How much time would you like to spend every day on your habit?")
                .font(.system(size: 20, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            // Time Options
            VStack(spacing: 20) {
                ForEach(timeOptions) { option in
                    Button(action: {
                        selectedTimeOption = option
                    }) {
                        Text(option.title)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(selectedTimeOption == option ? Color.orange : Color.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                    }
                }
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            // Get Plan Button wrapped in NavigationLink
            NavigationLink(destination: SuggestionView(selectedOption : selectedOption)) {
                Text("Get my plan")
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
        .background(Color(UIColor.systemYellow).opacity(0.1))
        .edgesIgnoringSafeArea(.top)
    }
}

