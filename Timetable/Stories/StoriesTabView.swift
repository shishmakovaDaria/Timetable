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
    var showNextGroup: (() -> Void)
    var showPreviousGroup: (() -> Void)

    var body: some View {
        TabView(selection: $currentStoryIndex) {
            ForEach(0..<stories.count, id: \.self) { index in
                StoryView(story: stories[index]).tag(index)
                    .onTapGesture { location in
                        let center = UIScreen.main.bounds.width / 2
                        if location.x > center {
                            didTapStoryRight()
                        } else {
                            didTapStoryLeft()
                        }
                    }
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }

    func didTapStoryRight() {
        let nextIndex = currentStoryIndex + 1
        if nextIndex == stories.count {
            showNextGroup()
        } else {
            currentStoryIndex = nextIndex
        }
    }
    
    func didTapStoryLeft() {
        let previousIndex = currentStoryIndex - 1
        if previousIndex < 0 {
            showPreviousGroup()
        } else {
            currentStoryIndex = previousIndex
        }
    }
}
