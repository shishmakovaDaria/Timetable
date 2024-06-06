//
//  StoriesContentView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesContentView: View {
    @Environment(\.dismiss) var dismiss
    let stories: [Story]

    var body: some View {
        ZStack(alignment: .topTrailing) {
            StoriesView(stories: stories, isShown: { dismiss() })
            CloseButton(action: { dismiss() })
                .padding(.top, 57)
                .padding(.trailing, 12)
        }
    }
}
