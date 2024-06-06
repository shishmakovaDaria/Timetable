//
//  StoriesGridView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesGridView: View {
    @State private var storyGroups: [StoryGroup] = [
        .storyGroup1,
        .storyGroup2,
        .storyGroup3,
        .storyGroup4,
        .storyGroup5,
        .storyGroup6,
        .storyGroup7,
        .storyGroup8,
        .storyGroup9
    ]
    
    @State private var storiesToShow: [Story] = []
    @State private var isPresentingStoriesContentView = false
    
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach($storyGroups) { storyGroup in
                    StoryCellView(storyGroup: storyGroup)
                        .onTapGesture {
                            setAsShown(for: storyGroup.id)
                            setToShow(for: storyGroup.id)
                            isPresentingStoriesContentView = true
                        }
                }
            }
        }
        .fullScreenCover(isPresented: $isPresentingStoriesContentView) {
            StoriesContentView(stories: storiesToShow)
        }
    }
    
    private func setAsShown(for groupId: Int) {
        guard let groupIndex = storyGroups.firstIndex(where: {$0.id == groupId}) else { return }
        storyGroups[groupIndex].isShown = true
    }
    
    private func setToShow(for groupId: Int) {
        guard let groupIndex = storyGroups.firstIndex(where: {$0.id == groupId}) else { return }
        storiesToShow = storyGroups[groupIndex].stories
    }
}
