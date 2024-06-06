//
//  StoryView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoryView: View {
    let story: Story
    
    var body: some View {
        ZStack {
            Color.ttBlackUniversal
            Image(story.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .padding(EdgeInsets(top: 51, leading: 0, bottom: 51, trailing: 0))
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 16) {
                    Text(story.title)
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(.white)
                        .lineLimit(2)
                    Text(story.description)
                        .font(.system(size: 20, weight: .regular))
                        .lineLimit(3)
                        .foregroundColor(.white)
                }
                .padding(.init(top: 0, leading: 16, bottom: 91, trailing: 16))
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    StoryView(story: .story1)
}
