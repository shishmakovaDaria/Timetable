//
//  ChoosingStation.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingStation: View {
    @Environment(\.dismiss) var dismiss
    @Binding var destinationBinding: String
    var selectedCity: City
    
    var body: some View {
        NavigationStack {
            List(selectedCity.stations) { station in
                HStack {
                    Text(station.title)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .listRowSeparator(.hidden)
                .onTapGesture {
                    destinationBinding = "\(selectedCity.title) (\(station.title))"
                    dismiss()
                }
            }
            .listStyle(.plain)
            .listRowSpacing(19)
            .navigationBarItems(
                leading: Image("chevron.left")
            )
            .toolbarRole(.editor)
            .navigationTitle("Выбор станции")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
        }
    }
}
