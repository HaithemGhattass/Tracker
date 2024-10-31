//
//  DetailView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    let selectedOption: String
    
    var body: some View {
        VStack(spacing: 20) {
            // Top Image and Dismiss Button
            ZStack {
                Color.orange.opacity(0.2)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 200)
                
                HStack {
                    Spacer()
                    Button(action: {
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
            
            // Title based on selected option
            Text("How much time would you like to spend every day on \(selectedOption.lowercased())?")
                .font(.system(size: 20, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            // Time Options
            VStack(spacing: 20) {
                Button(action: {
                    // Handle time selection
                }) {
                    Text("5 to 10 minutes")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                
                Button(action: {
                    // Handle time selection
                }) {
                    Text("10 to 30 minutes")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange.opacity(0.3))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                
                Button(action: {
                    // Handle time selection
                }) {
                    Text("30 minutes to 1 hour")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            // Get Plan Button
            Button(action: {
                // Handle "Get my plan" action
            }) {
                Text("Get my plan")
                    .font(.system(size: 18, weight: .semibold))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange.opacity(0.3))
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

#Preview {
    DetailView(selectedOption: "Improve health")
}
