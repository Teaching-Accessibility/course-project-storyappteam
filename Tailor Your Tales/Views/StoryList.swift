//
//  StoryList.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI

struct StoryList: View {
    let stories = [nextweek, samstreasures, multiplechoices]
    var body: some View {
        List(stories) { story in
            NavigationLink {
                StoryView(story: story, pageIndex: 0)
            } label: {
                StoryRow(story: story)
            }
        }
        .navigationTitle("Stories")
    }
}

#Preview {
    StoryList()
}
