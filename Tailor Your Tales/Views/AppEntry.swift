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
            Login()
        }
    }
}

#Preview {
    AppEntry().onAppear {
        srand48(23)
    }
}