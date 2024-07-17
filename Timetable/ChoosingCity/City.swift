//
//  City.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import Foundation

struct City: Hashable, Identifiable, Sendable {
    var id = UUID()
    var title: String
    var stations: [Station]
}
