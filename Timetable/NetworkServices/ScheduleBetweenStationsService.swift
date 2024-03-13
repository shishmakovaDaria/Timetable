//
//  ScheduleBetweenStationsService.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias ScheduleStations = Components.Schemas.ScheduleStationsResponse

protocol ScheduleBetweenStationsServiceProtocol {
    func getScheduleBetweenStations(fromStation: String, toStation: String) async throws -> ScheduleStations
}

final class ScheduleBetweenStationsService: ScheduleBetweenStationsServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getScheduleBetweenStations(fromStation: String, toStation: String) async throws -> ScheduleStations {
        let response = try await client.getScheduleBetweenStations(query: .init(
            apikey: apikey,
            from: fromStation,
            to: toStation
        ))
        
        return try response.ok.body.json
    }
}
