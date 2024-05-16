//
//  StoryView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct StoryView: View {
    var story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack{
            ScrollView {
                Text(characterNames(from: story[pageIndex].text, with: story.characters))
            }
            
//            ForEach(story[pageIndex].characterNames, id: \.self) { name in
//                                Button(name) {
//                                    // Action for when the button is clicked
//                                    print("Clicked on \(name)")
//                                }
//                            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                NavigationLink(destination: StoryView(story: story, pageIndex: choice.destination)) {
                    
                    Text(choice.text)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Page \(pageIndex + 1)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func characterNames(from template: String, with mapping: [String: Character]) -> String {
            var result = template
            for (role, c) in mapping {
                result = result.replacingOccurrences(of: "{\(role)" + "name}", with: c.name)
            }
            return result
        }
    }


#Preview {
    StoryView(story: nextweek, pageIndex: 0)
}
