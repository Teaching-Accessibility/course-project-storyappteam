//
//  TestLocalData.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/2/24.
//

import Foundation
import SwiftUI

struct TestLocalData: View {
    var body: some View {
        Button(action: {
            print("Saving Local Data")
            DataManager.shared.testLoadStory()
        }, label: {
            HStack {
                Text("Local Data")
                    .bold()
                    .font(.largeTitle)
            }
        })
        Button(action: {
            print("Print char")
            var stories = DataManager.shared.loadStoryData()
            var title = stories?[0].title
            var chars = DataManager.shared.loadCharData(story_title: title!)
            for char in chars! {
                print(char.name)
            }
        }, label: {
            HStack {
                Text("Printchar")
                    .bold()
                    .font(.largeTitle)
            }
        })
        Button(action: {
            print("Update Local Data")
            var stories = DataManager.shared.loadStoryData()
            print(stories)
            var title = stories?[0].title
            var chars = DataManager.shared.loadCharData(story_title: title!)
            //var chars = stories?[0].characters?.array as? [Character] ?? []
            var modc = DataManager.shared.modifyChar(char: chars![0], name: "PURPLE", gender: "Male", image: "nina")
            for char in chars! {
                print(char.name)
            }
            //print(chars)
            
            //DataManager.shared.addNewStory(new_id: Int64(1), new_title: "Another title!")
        }, label: {
            HStack {
                Text("Update local data")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.purple)
            }
        })
    }
}

#Preview {
    TestLocalData()
}
