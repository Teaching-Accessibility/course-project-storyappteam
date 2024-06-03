//
//  AppEntry.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct AppEntry: View {
    @State private var startupManager = StartupManager()
    var body: some View {
        NavigationStack {
            StoryList()
        }
    }
}

#Preview {
    AppEntry().onAppear {
        srand48(23)
    }
}
