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
            ZStack {
                Color.orange.opacity(0.2)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 200)
                
                HStack {
                    Spacer()
                    Button(action: {
                        // Dismiss action or navigate back
                        dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .padding()
                    }
                }
                
                Image("characterImage") // Replace with the actual image name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .offset(y: -40)
            }
            
            // Title
            Text("Which area of your life do you want to start improving?")
                .font(.system(size: 20, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            // Grid of Options
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(options, id: \.0) { option in
                    VStack {
                        Image(option.1)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        
                        Text(option.0)
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
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
