//
//  MockData.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import Foundation

// MARK: - mock data
enum MockData {
    static let mockCities: [City] = [
        City(title: "Москва", stations: mockStations),
        City(title: "Санкт-Петербург", stations: mockStations),
        City(title: "Сочи", stations: mockStations),
        City(title: "Самара", stations: mockStations),
        City(title: "Краснодар", stations: mockStations),
        City(title: "Казань", stations: mockStations),
        City(title: "Омск", stations: mockStations)
    ]
    
    static let mockStations: [Station] = [
        Station(title: "Киевский вокзал"),
        Station(title: "Курский вокзал"),
        Station(title: "Ярославский вокзал"),
        Station(title: "Белорусский вокзал"),
        Station(title: "Ленинградский вокзал"),
        Station(title: "Московский вокзал"),
        Station(title: "Витебский вокзал")
    ]
}
