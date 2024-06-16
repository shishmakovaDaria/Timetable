//
//  StoriesContentView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesContentView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var storyGroups: [StoryGroup]
    @Binding var selectedStoriesGroupIndex: Int

    var body: some View {
        if #available(iOS 17.0, *) {
            Color.ttBlackUniversal
                .ignoresSafeArea()
                .overlay {
                    TabView(
                        selection: $selectedStoriesGroupIndex
                    ) {
                        ForEach(0..<storyGroups.count, id: \.self) { index in
                            ZStack(alignment: .topTrailing) {
                                StoriesView(
                                    stories: storyGroups[selectedStoriesGroupIndex].stories,
                                    isShown: {
                                        setGroupAsShown(at: selectedStoriesGroupIndex)
                                        if index == storyGroups.count - 1 {
                                            dismiss()
                                        } else {
                                            selectedStoriesGroupIndex = index + 1
                                        }
                                    },
                                    showNextGroup: {
                                        selectedStoriesGroupIndex = min(selectedStoriesGroupIndex + 1, storyGroups.count - 1)
                                    },
                                    showPreviousGroup: {
                                        selectedStoriesGroupIndex = max(selectedStoriesGroupIndex - 1, 0)
                                    }
                                )
                                CloseButton(action: {
                                    setGroupAsShown(at: selectedStoriesGroupIndex)
                                    dismiss()
                                })
                                    .padding(.top, 57)
                                    .padding(.trailing, 12)
                            }
                        }
                    }
                    .ignoresSafeArea()
                    .tabViewStyle(
                        PageTabViewStyle(
                            indexDisplayMode: .never
                        )
                    )
                    .onChange(of: selectedStoriesGroupIndex) { oldValue, newValue in
                        setGroupAsShown(at: oldValue)
                    }
                }
            }
    }
    private func setGroupAsShown(at index: Int) {
        let updatedGroup = storyGroups[index].update(isShown: true)
        storyGroups[index] = updatedGroup
    }
}
