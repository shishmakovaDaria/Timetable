//
//  StoriesGridView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesGridView: View {
    @State private var storyGroups = MockStories.storyGroups
    
    @State private var storiesToShowIndex: Int = 0
    @State private var isPresentingStoriesContentView = false
    
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach($storyGroups) { storyGroup in
                    StoryCellView(storyGroup: storyGroup)
                        .onTapGesture {
                            setToShow(for: storyGroup.id)
                            isPresentingStoriesContentView = true
                        }
                }
            }
        }
        .fullScreenCover(isPresented: $isPresentingStoriesContentView) {
            StoriesContentView(storyGroups: $storyGroups, selectedStoriesGroupIndex: $storiesToShowIndex)
        }
    }
    
    private func setToShow(for groupId: Int) {
        guard let groupIndex = storyGroups.firstIndex(where: {$0.id == groupId}) else { return }
        storiesToShowIndex = groupIndex
    }
}
