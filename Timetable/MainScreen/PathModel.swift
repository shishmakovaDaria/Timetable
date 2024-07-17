//
//  PathModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 17.07.2024.
//

import Foundation

struct PathModel {
    var city: City
    var station: Station
    
    var pathString: String {
        "\(city.title) (\(station.title))"
    }
}
