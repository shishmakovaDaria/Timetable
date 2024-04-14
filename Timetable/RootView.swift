//
//  RootView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "arrow.up.message.fill")
                }
            SettingsView()
                .tabItem {
                    Image(.settings)
                        .renderingMode(.template)
                }
        }
        .tint(.ttBlack)
        .onAppear {
            let standardAppearance = UITabBarAppearance()

            standardAppearance.configureWithOpaqueBackground()
            standardAppearance.shadowColor = .black.withAlphaComponent(0.5)

            UITabBar.appearance().standardAppearance = standardAppearance
            UITabBar.appearance().scrollEdgeAppearance = standardAppearance
        }
    }
}

#Preview {
    RootView()
}