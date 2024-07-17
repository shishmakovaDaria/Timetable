//
//  ChoosingStationViewModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 18.07.2024.
//

import Foundation

@MainActor
final class ChoosingStationViewModel: ObservableObject {
    var allStations: [Station] = []
    @Published var stationsToShow: [Station] = []
    
    func filterStations(query: String) {
        if query.isEmpty {
            stationsToShow = allStations
        } else {
            stationsToShow = allStations.filter({ $0.title.lowercased().contains(query.lowercased())})
        }
    }
}
