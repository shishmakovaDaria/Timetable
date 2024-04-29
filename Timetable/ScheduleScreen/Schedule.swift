//
//  Schedule.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import Foundation

struct Schedule: Hashable, Identifiable {
    var id = UUID()
    let carrier: Carrier
    let transfer: String?
    let date: String
    let departureTime: String
    let arrivalTime: String
    let travelTime: String
}
