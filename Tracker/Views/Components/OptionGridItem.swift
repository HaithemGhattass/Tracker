//
//  OptionGridItem.swift
//  Tracker
//
//  Created by Haithem Ghattas on 31/10/2024.
//

import SwiftUI

struct OptionGridItem: View {
    let title: String
    let imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(radius: 5)
            
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    OptionGridItem(title: "title", imageName: "image")
}
