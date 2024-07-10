//
//  SettingsViewModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 28.06.2024.
//

import SwiftUI

class SettingsViewModel: ObservableObject {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
}
