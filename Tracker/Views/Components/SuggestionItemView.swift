//
//  SuggestionItemView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//

import SwiftUI

struct SuggestionItemView: View {
    var habit: Habit
    var isInMyPlan: Bool
    var action: () -> Void
    
    var body: some View {
        HStack {
            Circle()
                .fill(habit.color.opacity(0.3))
                .frame(width: 40, height: 40)
                .overlay(
                    Image(systemName: habit.iconName)
                        .foregroundColor(habit.color)
                        .font(.title3)
                )
            
            Text(habit.title)
                .foregroundColor(.gray)
                .font(.headline)
            
            Spacer()
            
            Button(action: action) {
                Circle()
                    .fill(isInMyPlan ? Color.red : Color.green)
                    .frame(width: 30, height: 30)
                    .overlay(
                        Image(systemName: isInMyPlan ? "minus" : "plus")
                            .foregroundColor(.white)
                            .font(.title3)
                    )
            }
        }
        .padding(.horizontal, 20)
    }
}


struct SuggestionItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            SuggestionItemView(
                habit: Habit(iconName: "dumbbell.fill", title: "Exercise", color: .orange),
                isInMyPlan: false,
                action: {}
            )
            
            SuggestionItemView(
                habit: Habit(iconName: "applelogo", title: "Eat healthy", color: .yellow),
                isInMyPlan: true,
                action: {}
            )
        }
        .previewLayout(.sizeThatFits)
    }
}
