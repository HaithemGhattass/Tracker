//
//  OnboardingView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 30/10/2024.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            // Welcome Image
            Image("welcomeImage") // Replace with the actual image name
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            // Title
            Text("Welcome")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black.opacity(0.6))
            
            // Description
            Text("Let's get started by creating a plan for your day.")
                .font(.system(size: 18))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Spacer()
            
            // "Let's create a plan" Button
            NavigationLink(destination: CreatePlanView()) {
                            Text("Let's create a plan")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(10)
                                .padding(.horizontal, 40)
                        }

            
            Text("if you alredy know which habit you want to start with you skip this step.")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            // "Skip" Button
            NavigationLink(destination:    DashboardView() ) {
                Text("Skip")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            

           
            Spacer()
        }
//        .background(Color(UIColor.systemYellow).opacity(0.1))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    OnboardingView()
}
