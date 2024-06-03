//
//  StoryView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct StoryView: View {
    var story: StoryMod
    //var storyChar: Story //Story entry in localdata to be able to access characters
    let pageIndex: Int
    var characters: [String: CharacterMod]
    //var characters: [Character]
    
    init(story: StoryMod, pageIndex: Int, characters: [String: CharacterMod]? = nil){
        self.story = story
        //self.characters = DataManager.shared.loadCharData(story_title: story.title)!
        self.characters = characters ?? story.characters
        self.pageIndex = pageIndex
    }
    
    let imageWidth: CGFloat = 400
    
    var body: some View {
        VStack{
            ScrollView {
                //Text(characterNames(from: story[pageIndex].text, with: characters))
                   // .font(.system(size: 30))
            }
            
            if let characterCount = story[pageIndex].characters?.count, characterCount > 0 {
                HStack(spacing: calculateSpacing(for: UIScreen.main.bounds.width, imageCount: characterCount, imageWidth: imageWidth)) {
                    ForEach(story[pageIndex].characters!.keys.sorted(), id: \.self) { key in
                         
                        let imageName = (self.characters[key]?.image!.rawValue)! + (story[pageIndex].characters?[key]!.rawValue)!
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: imageWidth, height: imageWidth)
                                .cornerRadius(8)
                        
                    
                    }
                }
                .padding()
            }
            
            if story[pageIndex].choices.count == 0 {
                NavigationLink(destination: StoryList()) {
                    
                    Text("Return to story list")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
            else {
                ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                    NavigationLink(destination: StoryView(story: story, pageIndex: choice.destination, characters: characters)) {
                        
                        Text(choice.text)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(8)
                    }
                }

            }
                
        }
            .padding()
            .navigationTitle("Page \(pageIndex + 1) of \(story.title)")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private func calculateSpacing(for screenWidth: CGFloat, imageCount: Int, imageWidth: CGFloat) -> CGFloat {
            let totalImageWidth = CGFloat(imageCount) * imageWidth
            let spacing = (screenWidth - totalImageWidth) / CGFloat(imageCount + 1)
            return spacing
    }
    
    func characterNames(from template: String, with mapping: [String: Character]) -> String {
            var result = template
            for (role, c) in mapping {
                result = result.replacingOccurrences(of: "{\(role)" + "name}", with: c.name!)
            }
            return result
        }
    }


#Preview {
    StoryView(story: nextweek, pageIndex: 0)
}
