//
//  ChoosingCity.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingCityView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var destinationBinding: String
    @State private var cities: [City] = MockData.mockCities
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                if cities.isEmpty {
                    Text("Город не найден")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.ttBlack)
                } else {
                    List(cities) { city in
                        HStack {
                            Text(city.title)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .background(
                                    NavigationLink("", destination: ChoosingStationView(dismiss: _dismiss, destinationBinding: $destinationBinding, selectedCity: city, stations: city.stations))
                                        .opacity(0)
                                )
                        }
                        .listRowSeparator(.hidden)
                       
                    }
                    .listStyle(.plain)
                    .listRowSpacing(19)
                }
            }
            .navigationBarItems(
                leading:
                    ZStack {
                        Image(systemName: "chevron.left")
                        Button("") {
                            dismiss()
                        }
                    }
            )
            .navigationTitle("Выбор города")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
            .searchable(text: $searchText, prompt: "Введите запрос")
        }
        
        .onChange(of: searchText, perform: { _ in
            if searchText.isEmpty {
                cities = MockData.mockCities
            } else {
                cities = filterCities(query: searchText)
            }
        })
    }
    
    private func filterCities(query: String) -> [City] {
        MockData.mockCities.filter({ $0.title.lowercased().contains(query.lowercased())})
    }
}
