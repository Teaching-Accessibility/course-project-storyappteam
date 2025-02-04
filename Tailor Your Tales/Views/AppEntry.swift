//
//  AppEntry.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct AppEntry: View {
    init() {
            _ = CoreDataManager.shared // Initialize the CoreDataManager
//        CoreDataManager.shared.clearAllCharacterEntities()
        // use the above line to clear all core data
        }
    
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
