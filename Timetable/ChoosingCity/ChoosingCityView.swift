//
//  ChoosingCity.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingCityView: View {
    @ObservedObject var viewModel = ChoosingCityViewModel()
    @Environment(\.dismiss) var dismiss
    @Binding var destinationBinding: String
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.ttWhite.ignoresSafeArea()
                VStack {
                    if viewModel.citiesToShow.isEmpty {
                        Text("Город не найден")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundStyle(.ttBlack)
                    } else {
                        List(viewModel.citiesToShow) { city in
                            HStack {
                                Text(city.title)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .background(
                                        NavigationLink("", destination: ChoosingStationView(dismiss: _dismiss, destinationBinding: $destinationBinding, selectedCity: city, stations: city.stations))
                                            .opacity(0)
                                    )
                            }
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.ttWhite)
                        }
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        .listRowSpacing(19)
                    }
                }
            }
            .navigationBarItems(
                leading:
                    ZStack {
                        Image(systemName: "chevron.left")
                        Button("") {
                            dismiss()
                        }
                    }
            )
            .navigationTitle("Выбор города")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
            .searchable(text: $searchText, prompt: "Введите запрос")
        }
        
        .onChange(of: searchText, perform: { _ in
            viewModel.filterCities(query: searchText)
        })
        .onAppear {
            viewModel.loadCities()
        }
    }
}
