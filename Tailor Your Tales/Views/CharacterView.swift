//
//  CharacterView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/16/24.
//

import SwiftUI

struct CharacterView: View {
    let story: Story
    @State var characters: [String: Character]
    var body: some View {
        Text("Tap on a character to edit them!")
        ScrollView(.vertical){
            ForEach(characters.keys.sorted(), id: \.self) {key in
                NavigationLink(destination: CharacterEdit(character: binding(for: key), role: key)){
                    HStack{
                        Text(characters[key]?.name ?? "")
                        Text("(" + (characters[key]?.gender.rawValue ?? "") + ")").foregroundColor(.gray)
                    }
                }
            }
        }
        
        NavigationLink(destination: StoryView(story: story, pageIndex: 0, characters: characters)){
            Text("Continue to " + story.title)
        }
    }
                                   
    func binding(for key: String) -> Binding<Character> {
            return Binding<Character>(
                get: { characters[key, default: Character(name: "", gender: .nonbinary, nameColor: .red)] },
                set: { newCharacter in
                    characters[key] = newCharacter
                }
            )
        }
}

