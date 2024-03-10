//
//  ContentView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 29.02.2024.
//

import SwiftUI
import OpenAPIURLSession

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
        .onAppear {
            stations()
        }
    }
    
    func stations() {
        guard let serverURL = try? Servers.server1() else { return }
        
        let client = Client(
            serverURL: serverURL,
            transport: URLSessionTransport()
        )
        
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
}

#Preview {
    ContentView()
}
