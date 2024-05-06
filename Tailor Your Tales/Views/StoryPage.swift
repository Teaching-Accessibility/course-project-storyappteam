//
//  StoryPage.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import UIKit
import SwiftUI

struct MyView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

let exampleView = MyView()

struct StoryPage: View {
    var pageText: String = ""
    var pageContent: AnyView
    
    var body: some View {
        VStack {
            Text(pageText)
            pageContent
            Spacer()
        }
    }
}

#Preview {
    StoryPage(pageText: "Hello", pageContent: AnyView(exampleView))
}
