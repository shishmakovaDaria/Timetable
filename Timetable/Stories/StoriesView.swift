//
//  StoriesView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesView: View {
    let stories: [Story]
    private var timerConfiguration: TimerConfiguration { .init(storiesCount: stories.count) }
    @State var currentStoryIndex: Int = 0
    @State var currentProgress: CGFloat = 0
    var isShown: (() -> Void)

    var body: some View {
        ZStack(alignment: .topTrailing) {
            if #available(iOS 17.0, *) {
                StoriesTabView(stories: stories, currentStoryIndex: $currentStoryIndex)
                    .onChange(of: currentStoryIndex) { oldValue, newValue in
                        didChangeCurrentIndex(oldIndex: oldValue, newIndex: newValue)
                    }
                StoriesProgressBar(
                    storiesCount: stories.count,
                    timerConfiguration: timerConfiguration,
                    currentProgress: $currentProgress
                )
                .padding(.init(top: 28, leading: 12, bottom: 12, trailing: 12))
                .onChange(of: currentProgress) { _, newValue in
                    didChangeCurrentProgress(newProgress: newValue)
                }
            }
        }
    }

    private func didChangeCurrentIndex(oldIndex: Int, newIndex: Int) {
        guard oldIndex != newIndex else { return }
        let progress = timerConfiguration.progress(for: newIndex)
        guard abs(progress - currentProgress) >= 0.01 else { return }
        withAnimation {
            currentProgress = progress
        }
    }

    private func didChangeCurrentProgress(newProgress: CGFloat) {
        let index = timerConfiguration.index(for: newProgress)
        if newProgress == 1 {
            isShown()
        }
        guard index != currentStoryIndex else { return }
        withAnimation {
            currentStoryIndex = index
        }
    }
}
