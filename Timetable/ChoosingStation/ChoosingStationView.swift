//
//  ChoosingStation.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingStationView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var destination: PathModel
    @State var stations: [Station]
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.ttWhite.ignoresSafeArea()
                VStack {
                    if stations.isEmpty {
                        Text("Станция не найдена")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(.ttBlack)
                    } else {
                        List(stations) { station in
                            HStack {
                                Text(station.title)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.ttWhite)
                            .onTapGesture {
                                destination.station = Station(title: station.title, code: station.code)
                                dismiss()
                            }
                        }
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        .listRowSpacing(19)
                    }
                }
            }
            .navigationBarItems(
                leading: Text("")
            )
            .toolbarRole(.editor)
            .navigationTitle("Выбор станции")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Введите запрос")
        }
        
        .onChange(of: searchText, perform: { _ in
            if searchText.isEmpty {
                stations = destination.city.stations
            } else {
                stations = filterStations(query: searchText)
            }
        })
    }
    
    private func filterStations(query: String) -> [Station] {
        destination.city.stations.filter({ $0.title.lowercased().contains(query.lowercased())})
    }
}
