//
//  DashboardView.swift
//  Tracker
//
//  Created by Haithem Ghattas on 3/11/2024.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack{
            Text("Dashboard View!")
            TabBar()
//                .offset(y:model.showsuggestion ? 200 : 0)
        }
     

    }
}

#Preview {
    DashboardView()
}
