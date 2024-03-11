//
//  ContentView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 29.02.2024.
//

import SwiftUI
import OpenAPIURLSession

struct ContentView: View {
    let client = Client(
        serverURL: try! Servers.server1(),
        transport: URLSessionTransport()
    )
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
        .onAppear {
            //stations()
            settlement()
        }
    }
    
    func stations() {
        let service = NearestStationsService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let stations = try await service.getNearestStations(
                lat: 59.864177,
                lng: 30.319163,
                distance: 50
            )
            print(stations)
        }
    }
    
    func settlement() {
        let service = NearestSettlementService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let settlement = try await service.getNearestSettlement(
                lat: 59.864177,
                lng: 30.319163
            )
            print(settlement)
        }
    }
}

#Preview {
    ContentView()
}
