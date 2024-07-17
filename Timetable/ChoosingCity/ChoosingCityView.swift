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
    @Binding var destination: PathModel
    @State var isPresented: Bool = false
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.ttWhite.ignoresSafeArea()
                VStack {
                    if viewModel.isLoading {
                        ProgressView()
                            .progressViewStyle(.circular)
                    } else {
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
                                }
                                .navigationDestination(isPresented: $isPresented) {
                                    ChoosingStationView(dismiss: _dismiss, destination: $destination)
                                }
                                .onTapGesture {
                                    destination.city = City(title: city.title, stations: city.stations)
                                    isPresented = true
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
        .task {
            viewModel.loadCities()
        }
    }
}
