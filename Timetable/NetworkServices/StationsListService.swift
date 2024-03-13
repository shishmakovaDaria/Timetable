//
//  StationsListService.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 13.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

protocol StationsListServiceProtocol {
    func getStationsList() async throws -> HTTPBody
}

final class StationsListService: StationsListServiceProtocol {
    
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getStationsList() async throws -> HTTPBody {
        let response = try await client.getStationsList(query: .init(
            apikey: apikey
        ))
        return try response.ok.body.html
    }
}
