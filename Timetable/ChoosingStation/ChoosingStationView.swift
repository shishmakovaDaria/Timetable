//
//  ChoosingStation.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingStationView: View {
    @ObservedObject var viewModel = ChoosingStationViewModel()
    @Environment(\.dismiss) var dismiss
    @Binding var destination: PathModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.ttWhite.ignoresSafeArea()
                VStack {
                    if viewModel.stationsToShow.isEmpty {
                        Text("Станция не найдена")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(.ttBlack)
                    } else {
                        List(viewModel.stationsToShow) { station in
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
            viewModel.filterStations(query: searchText)
        })
        .onAppear {
            viewModel.allStations = destination.city.stations
            viewModel.stationsToShow = destination.city.stations
        }
    }
}
