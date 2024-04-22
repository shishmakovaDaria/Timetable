//
//  FilterView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct FiltersView: View {
    @Environment(\.dismiss) var dismiss
    @State private var filters: Set<Filters> = [.afternoon]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Время отправления")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.ttBlack)
                    Spacer()
                }
                .padding([.leading, .trailing], 16)
                LazyVStack {
                    FiltersRowView(title: "Утро 06:00 - 12:00", isCheckbox: true)
                        .listRowSeparator(.hidden)
                    FiltersRowView(title: "День 12:00 - 18:00", isCheckbox: true)
                        .listRowSeparator(.hidden)
                    FiltersRowView(title: "Вечер 18:00 - 00:00", isCheckbox: true)
                        .listRowSeparator(.hidden)
                    FiltersRowView(title: "Ночь 00:00 - 06:00", isCheckbox: true)
                        .listRowSeparator(.hidden)
                }
                .padding(16)
                .lineSpacing(0)
                HStack {
                    Text("Показывать варианты с пересадками")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.ttBlack)
                    Spacer()
                }
                .padding([.leading, .trailing], 16)
                LazyVStack {
                    FiltersRowView(title: "Да", isCheckbox: false)
                        .listRowSeparator(.hidden)
                    FiltersRowView(title: "Нет", isCheckbox: false)
                        .listRowSeparator(.hidden)
                }
                    .padding(16)
                Spacer()
                if !filters.isEmpty {
                    Button("Применить") {
                        dismiss()
                    }
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(.ttBlue)
                        .clipShape(.rect(cornerRadius: 16))
                        .font(.system(size: 17, weight: .bold))
                        .foregroundStyle(.white)
                        .padding([.leading, .trailing], 16)
                        .padding(.bottom, 24)
                }
            }
            .background(.ttWhite)
            .navigationBarItems(
                leading: Text("")
            )
            .toolbarRole(.editor)
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.ttBlack)
        }
    }
}

#Preview {
    FiltersView()
}
