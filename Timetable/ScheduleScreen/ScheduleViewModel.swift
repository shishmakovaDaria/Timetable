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
    private var allSchedules: [Schedule] = []
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
                    allSchedules.append(
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
                schedules = allSchedules
            } catch {
                print("ERROR")
            }
        }
    }
    
    func filter(filters: Set<Filters>) {
        if filters.isEmpty {
            schedules = allSchedules
        } else {
            schedules = []
            if filters.contains(.morning) {
                schedules.append(contentsOf: allSchedules.filter{
                    let hour = Int($0.departureTime.prefix(2)) ?? 0
                    return hour >= 6 && hour < 12
                })
            }
            if filters.contains(.afternoon) {
                schedules.append(contentsOf: allSchedules.filter{
                    let hour = Int($0.departureTime.prefix(2)) ?? 0
                    return hour >= 12 && hour < 18
                })
            }
            if filters.contains(.evening) {
                schedules.append(contentsOf: allSchedules.filter{
                    let hour = Int($0.departureTime.prefix(2)) ?? 0
                    return hour >= 18
                })
            }
            if filters.contains(.night) {
                schedules.append(contentsOf: allSchedules.filter{
                    let hour = Int($0.departureTime.prefix(2)) ?? 0
                    return hour < 6
                })
            }
        }
    }
}
