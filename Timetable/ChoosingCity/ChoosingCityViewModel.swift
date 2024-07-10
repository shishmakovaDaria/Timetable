//
//  ChoosingCityViewModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 10.07.2024.
//

import Foundation

final class ChoosingCityViewModel: ObservableObject {
    private var allCities: [City] = []
    @Published var citiesToShow: [City] = []
    
    func loadCities() {
        allCities = MockData.mockCities
        citiesToShow = allCities
    }
    
    func filterCities(query: String) {
        if query.isEmpty {
            citiesToShow = allCities
        } else {
            citiesToShow = allCities.filter({ $0.title.lowercased().contains(query.lowercased())})
        }
    }
}
