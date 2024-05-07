//
//  StoryRow.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import SwiftUI

struct StoryRow: View {
    var story: Story
    
    var body: some View {
        HStack{
            story.previewImage
            Text(story.title)
            Spacer()
        }
    }
}

#Preview {
    StoryRow(story: nextweek)
}
