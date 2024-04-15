//
//  ScheduleView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct ScheduleView: View {
    @Environment(\.dismiss) var dismiss
    @State var fromText: String
    @State var toText: String
    @State private var schedules: [Schedule] = MockData.mockSchedules
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(fromText) → \(toText)")
                    .font(.system(size: 24, weight: .bold))
                    .padding([.leading, .trailing, .top], 16)
                List(schedules) { schedule in
                    Text(schedule.carrier)
                }
                .listStyle(.plain)
                Spacer()
                Button("Уточнить время") {
                    // TODO: - уточнить время
                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.ttBlue)
                .clipShape(.rect(cornerRadius: 16))
                .font(.system(size: 17, weight: .bold))
                .foregroundStyle(.white)
                .padding([.leading, .trailing], 16)
                .padding(.bottom, 24)
                
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
        }
    }
}

#Preview {
    ScheduleView(
        fromText: "Москва (Ярославский вокзал)",
        toText: "Санкт-Петербург (Балтийский вокзал)"
    )
}
