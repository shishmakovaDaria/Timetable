//
//  FilterView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct FiltersView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var filters: Set<Filters>
    
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
                    FiltersRowView(isChecked: filters.contains(.morning), title: "Утро 06:00 - 12:00", isCheckbox: true, checked: {
                        if filters.contains(.morning) {
                            filters.remove(.morning)
                        } else {
                            filters.insert(.morning)
                        }
                    })
                        .listRowSeparator(.hidden)
                    FiltersRowView(isChecked: filters.contains(.afternoon), title: "День 12:00 - 18:00", isCheckbox: true, checked: {
                        if filters.contains(.afternoon) {
                            filters.remove(.afternoon)
                        } else {
                            filters.insert(.afternoon)
                        }
                    })
                        .listRowSeparator(.hidden)
                    FiltersRowView(isChecked: filters.contains(.evening), title: "Вечер 18:00 - 00:00", isCheckbox: true, checked: {
                        if filters.contains(.evening) {
                            filters.remove(.evening)
                        } else {
                            filters.insert(.evening)
                        }
                    })
                        .listRowSeparator(.hidden)
                    FiltersRowView(isChecked: filters.contains(.night), title: "Ночь 00:00 - 06:00", isCheckbox: true, checked: {
                        if filters.contains(.night) {
                            filters.remove(.night)
                        } else {
                            filters.insert(.night)
                        }
                    })
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
                    FiltersRowView(isChecked: false, title: "Да", isCheckbox: false, checked: {})
                        .listRowSeparator(.hidden)
                    FiltersRowView(isChecked: false, title: "Нет", isCheckbox: false, checked: {})
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
