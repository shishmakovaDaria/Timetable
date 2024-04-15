//
//  ScheduleRowView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 15.04.2024.
//

import SwiftUI

struct ScheduleRowView: View {
    var schedule: Schedule
    
    var body: some View {
        VStack {
            HStack {
                Image(schedule.image)
                    .frame(width: 38, height: 38)
                    .padding(.leading, 14)
                VStack(alignment: .leading) {
                    Text(schedule.carrier)
                        .font(.system(size: 17, weight: .regular))
                        .foregroundStyle(.ttBlack)
                    if let transfer = schedule.transfer {
                        Text(transfer)
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.ttRed)
                    }
                    
                }
                Spacer()
                Text(schedule.date)
                    .padding(.trailing, 7)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.ttBlack)
            }
            .padding(.top, 14)
            HStack {
                Text(schedule.departureTime)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundStyle(.ttBlack)
                    .padding(.leading, 14)
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.ttGray)
                Text(schedule.travelTime)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.ttBlack)
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.ttGray)
                Text(schedule.arrivalTime)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundStyle(.ttBlack)
                    .padding(.trailing, 14)
                
            }
            .frame(height: 48)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 104)
        .background(.ttLightGray)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ScheduleRowView(
        schedule:
            Schedule(
                carrier: "РЖД",
                transfer: "С пересадкой в Костроме",
                image: "rzhd",
                date: "14 января",
                departureTime: "22:30",
                arrivalTime: "08:15",
                travelTime: "20 часов"
            )
    )
}
