//
//  ChoosingCity.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingCity: View {
    @Environment(\.dismiss) var dismiss
    @Binding var destinationBinding: String
    
    var body: some View {
        NavigationStack {
            List(mockCities) { city in
                HStack {
                    Text(city.title)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .background(
                            NavigationLink("", destination: ChoosingStation(dismiss: _dismiss, destinationBinding: $destinationBinding, selectedCity: city))
                                .opacity(0)
                        )
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .listRowSpacing(19)
            .navigationBarItems(
                leading: Button("", systemImage: "chevron.left") {
                    dismiss()
                }
            )
            .navigationTitle("Выбор города")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
        }
    }
}

// MARK: - mock data
let mockCities: [City] = [
    City(title: "Москва", stations: mockStations),
    City(title: "Санкт-Петербург", stations: mockStations),
    City(title: "Сочи", stations: mockStations),
    City(title: "Самара", stations: mockStations),
    City(title: "Краснодар", stations: mockStations),
    City(title: "Казань", stations: mockStations),
    City(title: "Омск", stations: mockStations)
]

let mockStations: [Station] = [
    Station(title: "Киевский вокзал"),
    Station(title: "Курский вокзал"),
    Station(title: "Ярославский вокзал"),
    Station(title: "Белорусский вокзал"),
    Station(title: "Ленинградский вокзал"),
    Station(title: "Московский вокзал"),
    Station(title: "Витебский вокзал")
]
