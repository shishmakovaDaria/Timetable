//
//  Carrier.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import Foundation

struct Carrier: Hashable, Identifiable {
    var id = UUID()
    let title: String
    let fullTitle: String
    let image: String
    let email: String
    let phone: String
}
