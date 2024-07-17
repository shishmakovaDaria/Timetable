//
//  ScheduleViewModel.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 17.07.2024.
//

import Foundation
import OpenAPIURLSession

@MainActor
final class ScheduleViewModel: ObservableObject {
    @Published var schedules: [Schedule] = []
    
    func loadSchedules(fromStation: String, toStation: String) {
        let client = Client(
            serverURL: try! Servers.server1(),
            transport: URLSessionTransport()
        )
        
        let service = ScheduleBetweenStationsService(
            client: client,
            apikey: Constants.apikey
        )
        
        Task {
            do {
                let loadedSchedules = try await service.getScheduleBetweenStations(
                    fromStation: fromStation,
                    toStation: toStation
                )
                loadedSchedules.segments?.forEach { segment in
                    let carrier = Carrier(
                        title: segment.thread?.carrier?.title ?? "nil",
                        fullTitle: segment.thread?.carrier?.title ?? "nil",
                        image: "rzhd",
                        email: segment.thread?.carrier?.email ?? "nil",
                        phone: segment.thread?.carrier?.phone ?? "nil"
                    )
                    schedules.append(
                        Schedule(
                            carrier: carrier,
                            transfer: segment.has_transfers,
                            date: segment.start_date ?? "nil",
                            departureTime: String(segment.departure?.prefix(5) ?? "nil"),
                            arrivalTime: String(segment.arrival?.prefix(5) ?? "nil"),
                            travelTime: "\(Int((segment.duration ?? 0)/3600)) часов"
                        )
                    )
                }
            } catch {
                print("ERROR")
            }
        }
    }
}
