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
            .font(.system(size: 25))
        ScrollView(.vertical){
            ForEach(characters.keys.sorted(), id: \.self) {key in
                NavigationLink(destination: CharacterEdit(character: binding(for: key), role: key)){
                    HStack{
                        Text(characters[key]?.name ?? "")
                            .font(.system(size: 20))
                        Text("(" + (characters[key]?.gender.rawValue ?? "") + ")").foregroundColor(.gray)
                            .font(.system(size: 20))
                    }
                }
            }
        }
        
        NavigationLink(destination: StoryView(story: story, pageIndex: 0, characters: characters)){
            Text("Continue to " + story.title)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.gray.opacity(0.25))
                .cornerRadius(8)
        }
        .padding()
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

