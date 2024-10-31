//
//  HeaderView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

// HeaderView.swift
import SwiftUI

struct HeaderView: View {
    var dismiss: DismissAction

    var body: some View {
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
    }
}
