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
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(fromText) → \(toText)")
                    .font(.system(size: 24, weight: .bold))
                    .padding([.leading, .trailing, .top], 16)
                Spacer()
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
