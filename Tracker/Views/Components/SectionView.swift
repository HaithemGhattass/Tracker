//
//  SectionView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//

import SwiftUI

struct SectionView: View {
    var title: String
    var items: [Habit]
    var emptyMessage: String
    var action: (Habit) -> Void
    var isInMyPlan: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.headline)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 3)
                .offset(y: 20)
                .zIndex(1)
            
            VStack(spacing: 12) {
                if items.isEmpty {
                    Text(emptyMessage)
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    ForEach(items) { habit in
                        SuggestionItemView(
                            habit: habit,
                            isInMyPlan: isInMyPlan,
                            action: { action(habit) }
                        )
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 3)
        }
        .padding(.horizontal, 20)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            SectionView(
                title: "Our Suggestions",
                items: [
                    Habit(iconName: "dumbbell.fill", title: "Exercise", color: .orange),
                    Habit(iconName: "applelogo", title: "Eat healthy", color: .yellow),
                    Habit(iconName: "hand.raised.fill", title: "Treat yourself", color: .pink)
                ],
                emptyMessage: "No more suggestions",
                action: { _ in },
                isInMyPlan: false
            )
            
            SectionView(
                title: "My Plan",
                items: [],
                emptyMessage: "No habits added yet.",
                action: { _ in },
                isInMyPlan: true
            )
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
