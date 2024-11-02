//
//  ImprovementDetailView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import SwiftUI

struct ImprovementDetailView: View {
    let option: CreatePlanOptionItem

    var body: some View {
        VStack(spacing: 20) {
            // Display the image
            Image(option.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.top, 20)

            // Display the title
            Text(option.title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)

            // Display the description
            Text(option.title)
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)

            Spacer()
        }
        .navigationBarTitle("Details", displayMode: .inline)
        .padding()
        .background(Color(UIColor.systemYellow).opacity(0.1).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    ImprovementDetailView(option: CreatePlanOptionItem(title: "Improve health", imageName: "healthImage"))
}
