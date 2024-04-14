//
//  ChoosingCity.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 14.04.2024.
//

import SwiftUI

struct ChoosingCity: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Text("Выбираем город")
                .navigationBarItems(
                    leading: Button("", systemImage: "chevron.left") {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
        }
    }
}

#Preview {
    ChoosingCity()
}
