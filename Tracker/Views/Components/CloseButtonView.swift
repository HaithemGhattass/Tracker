//
//  CloseButtonView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 2/11/2024.
//

import SwiftUI

struct CloseButtonView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
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
    }
}
