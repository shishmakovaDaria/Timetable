//
//  StoriesView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesView: View {
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
    
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach($storyGroups) { storyGroup in
                    StoryCellView(storyGroup: storyGroup)
                        .onTapGesture {
                            setAsShown(for: storyGroup.id)
                        }
                }
            }
        }
    }
    
    private func setAsShown(for groupId: UUID) {
        guard let groupIndex = storyGroups.firstIndex(where: {$0.id == groupId}) else { return }
        storyGroups[groupIndex].isShown.toggle()
    }
}
