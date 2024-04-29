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
    
    static let mockCarriers: [Carrier] = [
        Carrier(
            title: "РЖД",
            fullTitle: "ОАО «РЖД»",
            image: "rzhd",
            email: "i.lozgkina@yandex.ru",
            phone: "+7 (904) 329-27-71"
        ),
        Carrier(
            title: "ФГК",
            fullTitle: "АО «ФГК»",
            image: "fgk",
            email: "info@railfgk.ru",
            phone: "+7 (343) 380-71-44"
        ),
        Carrier(
            title: "Урал логистика",
            fullTitle: "ООО «Уральская Логистическая Группа»",
            image: "ural",
            email: "contact@ural-lg.ru",
            phone: "8 (800) 505-49-84"
        )
    ]
    
    static let mockSchedules: [Schedule] = [
        Schedule(
            carrier: mockCarriers[0],
            transfer: "С пересадкой в Костроме",
            date: "14 января",
            departureTime: "22:30",
            arrivalTime: "08:15",
            travelTime: "20 часов"
        ),
        Schedule(
            carrier: mockCarriers[1],
            transfer: nil,
            date: "15 января",
            departureTime: "01:15",
            arrivalTime: "09:00",
            travelTime: "9 часов"
        ),
        Schedule(
            carrier: mockCarriers[2],
            transfer: nil,
            date: "16 января",
            departureTime: "12:30",
            arrivalTime: "21:00",
            travelTime: "9 часов"
        ),
        Schedule(
            carrier: mockCarriers[0],
            transfer: "С пересадкой в Костроме",
            date: "14 января",
            departureTime: "22:30",
            arrivalTime: "08:15",
            travelTime: "20 часов"
        ),
        Schedule(
            carrier: mockCarriers[2],
            transfer: nil,
            date: "16 января",
            departureTime: "12:30",
            arrivalTime: "21:00",
            travelTime: "9 часов"
        )
    ]
}
