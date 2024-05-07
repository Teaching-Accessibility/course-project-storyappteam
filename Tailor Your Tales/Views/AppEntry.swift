//
//  AppEntry.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct AppEntry: View {
    var body: some View {
        NavigationStack {
            StoryView(story: nextweek, pageIndex: 0)
        }
    }
}

#Preview {
    AppEntry()
}
