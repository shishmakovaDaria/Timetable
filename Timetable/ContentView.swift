//
//  ContentView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.04.2024.
//

import SwiftUI

struct ContentView: View {
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
    }
}

#Preview {
    ContentView()
}
