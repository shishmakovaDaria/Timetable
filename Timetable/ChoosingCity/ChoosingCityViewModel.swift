//
//  ChoosingCityViewModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 10.07.2024.
//

import Foundation
import OpenAPIURLSession

@MainActor
final class ChoosingCityViewModel: ObservableObject {
    private var allCities: [City] = []
    @Published var citiesToShow: [City] = []
    @Published var isLoading: Bool = false
    
    func loadCities() {
        isLoading = true
        let client = Client(
            serverURL: try! Servers.server1(),
            transport: URLSessionTransport()
        )
        
        let service = StationsListService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            do {
                let stationList = try await service.getStationsList()
                
                let data = try await Data(collecting: stationList, upTo: 50*1024*1024)
                let stations = try JSONDecoder().decode(Components.Schemas.StationsListResponse.self, from: data)
                stations.countries?.forEach { country in
                    if country.title == "Россия" {
                        country.regions?.forEach { region in
                            region.settlements?.forEach { city in
                                if let stations = city.stations {
                                    allCities.append(
                                        City(
                                            title: city.title ?? "nil",
                                            stations: stations.map({
                                                Station(
                                                    title: $0.title ?? "nil",
                                                    code: $0.codes?.yandex_code ?? "nil"
                                                )
                                            })
                                        )
                                    )
                                    citiesToShow = allCities
                                    isLoading = false
                                }
                            }
                        }
                    }
                }
            } catch {
                print("ERROR")
            }
        }
    }
    
    func filterCities(query: String) {
        if query.isEmpty {
            citiesToShow = allCities
        } else {
            citiesToShow = allCities.filter({ $0.title.lowercased().contains(query.lowercased())})
        }
    }
}
