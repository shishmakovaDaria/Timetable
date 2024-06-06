//
//  StoriesTabView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesTabView: View {
    let stories: [Story]
    @Binding var currentStoryIndex: Int

    var body: some View {
        TabView(selection: $currentStoryIndex) {
            ForEach(0..<stories.count, id: \.self) { index in
                StoryView(story: stories[index]).tag(index)
                    .onTapGesture {
                        didTapStory()
                    }
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }

    func didTapStory() {
        currentStoryIndex = min(currentStoryIndex + 1, stories.count - 1)
    }
}
