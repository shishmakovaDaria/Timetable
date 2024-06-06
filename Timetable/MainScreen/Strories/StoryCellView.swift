//
//  StoryCellView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoryCellView: View {
    var storyGroup: StoryGroup
    
    var body: some View {
        ZStack {
            Image(storyGroup.image)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.ttBlue, lineWidth: 4)
                )
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

#Preview {
    StoryCellView(storyGroup: .storyGroup1)
}
