//
//  ChoosingStation.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingStation: View {
    var stations: [Station]
    
    var body: some View {
        Text("Переданная строка: \(stations.first!.title)")
    }
}

#Preview {
    ChoosingStation(stations: [Station(title: "Киевский вокзал")])
}
