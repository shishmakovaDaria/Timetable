//
//  CloseButton.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct CloseButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: { action() }, label: {
            Image(.close)
        })
    }
}
