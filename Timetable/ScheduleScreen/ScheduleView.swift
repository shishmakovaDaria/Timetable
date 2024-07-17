//
//  ScheduleView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct ScheduleView: View {
    @ObservedObject var viewModel = ScheduleViewModel()
    @Environment(\.dismiss) var dismiss
    @State var fromPath: PathModel
    @State var toPath: PathModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("\(fromPath.pathString) → \(toPath.pathString)")
                    .font(.system(size: 24, weight: .bold))
                    .padding([.leading, .trailing, .top], 16)
                if viewModel.schedules.isEmpty {
                    Text("Вариантов нет")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.ttBlack)
                } else {
                    ScrollView (showsIndicators: false) {
                        LazyVStack {
                            ForEach(viewModel.schedules) { schedule in
                                NavigationLink(destination: CarrierView(carrier: schedule.carrier)) {
                                    ScheduleRowView(schedule: schedule)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                                }
                            }
                        }
                        .padding([.leading, .trailing], 16)
                    }
                }
                
                NavigationLink(destination: FiltersView()) {
                    Text("Уточнить время")
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
                leading:
                    ZStack {
                        Image(systemName: "chevron.left")
                        Button("") {
                            dismiss()
                        }
                    }
            )
            .task {
                viewModel.loadSchedules(fromStation: fromPath.station.code, toStation: toPath.station.code)
            }
        }
    }
}
