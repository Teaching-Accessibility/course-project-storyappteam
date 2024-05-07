//
//  StoryList.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI

struct StoryList: View {
    let stories = [nextweek, samstreasures]
    var body: some View {
        List(stories) { story in
                StoryRow(story: story)
        }
    }
}

#Preview {
    StoryList()
}
