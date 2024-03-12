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
            //settlement()
            //carrierInfo()
            //schedule()
            //scheduleBetweenStations()
            copyright()
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
    
    func carrierInfo() {
        let service = CarrierInfoService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let carrierInfo = try await service.getCarrierInfo(code: 680)
            print(carrierInfo)
        }
    }
    
    func schedule() {
        let service = StationScheduleService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let schedule = try await service.getStationSchedule(station: "s9600213")
            print(schedule)
        }
    }
    
    func scheduleBetweenStations() {
        let service = ScheduleBetweenStationsService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let schedule = try await service.getScheduleBetweenStations(
                fromStation: "c146",
                toStation: "c213"
            )
            print(schedule)
        }
    }
    
    func copyright() {
        let service = CopyrightService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            let copyright = try await service.getCopyright()
            
            print(copyright)
        }
    }
}

#Preview {
    ContentView()
}
