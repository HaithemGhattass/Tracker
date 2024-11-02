//
//  CreatePlanView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 30/10/2024.
//

import SwiftUI

struct CreatePlanView: View {
    @StateObject private var viewModel = CreatePlanViewModel()

    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            TitleView()
            OptionsGridView(options: viewModel.options) // Pass the options array directly
            Spacer()
        }
        .background(Color(UIColor.systemYellow).opacity(0.1))
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
    }
}

struct TitleView: View {
    var body: some View {
        Text("Which area of your life do you want to start improving?")
            .font(.system(size: 20, weight: .semibold))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 20)
            .foregroundColor(.black)
    }
}


struct OptionsGridView: View {
    let options: [CreatePlanOptionItem]
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
            ForEach(options, id: \.title) { option in
                NavigationLink(destination: DetailView(selectedOption: option.title)) {
                    OptionGridItem(title: option.title, imageName: option.imageName)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    CreatePlanView()
}
