//
//  CarrierInfoService.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 11.03.2024.
//

import OpenAPIRuntime
import OpenAPIURLSession

typealias Carriers = Components.Schemas.Carriers

protocol CarrierInfoServiceProtocol {
    func getCarrierInfo(code: Int) async throws -> Carriers
}

final class CarrierInfoService: CarrierInfoServiceProtocol {
    private let client: Client
    private let apikey: String
    
    init(client: Client, apikey: String) {
        self.client = client
        self.apikey = apikey
    }
    
    func getCarrierInfo(code: Int) async throws -> Carriers {
        let response = try await client.getCarrierInfo(query: .init(
            apikey: apikey,
            code: code
        ))
        return try response.ok.body.json
    }
}
