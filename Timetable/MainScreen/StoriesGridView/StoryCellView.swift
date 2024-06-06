//
//  StoryCellView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoryCellView: View {
    @Binding var storyGroup: StoryGroup
    
    var body: some View {
        ZStack {
            if !storyGroup.isShown {
                Image(storyGroup.image)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 16)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .strokeBorder(Color.ttBlue, lineWidth: 4)
                    )
            } else {
                Image(storyGroup.image)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 16)
                    )
                    .overlay(
                        Color.white.opacity(0.5)
                    )
            }
            VStack {
                Spacer()
                Text(storyGroup.title)
                    .foregroundStyle(.white)
                    .font(.system(size: 12, weight: .regular))
                    .lineLimit(3)
                    .padding(.bottom, 12)
                    .padding([.leading, .trailing], 8)
            }
        }
        .frame(width: 92, height: 140)
    }
}
