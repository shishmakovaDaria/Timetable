//
//  TimetableApp.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 29.02.2024.
//

import SwiftUI

@main
struct TimetableApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
