//
//  StoriesView.swift
//  Timetable
//
//  Created by Дарья Шишмакова on 06.06.2024.
//

import SwiftUI

struct StoriesView: View {
    var storyGroups: [StoryGroup] = [
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
                ForEach(storyGroups) { storyGroup in
                    StoryCellView(storyGroup: storyGroup)
                }
            }
        }
    }
}

#Preview {
    StoriesView()
}
