//
//  CharacterView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/16/24.
//

import SwiftUI

struct CharacterView: View {
    let story: StoryMod
    @State var characters: [String: CharacterMod]
    var body: some View {
        Text("Tap on a character to edit them!")
            .font(.system(size: 25))
        ScrollView(.vertical){
            if characters.count != 0 {
                ForEach(characters.keys.sorted(), id: \.self) {key in
                    NavigationLink(destination: CharacterEdit(character: binding(for: key), role: key)){
                        VStack {
                            HStack{
                                Text(characters[key]?.name ?? "")
                                    .font(.system(size: 20))
                                Text("(" + (characters[key]?.gender.rawValue ?? "") + ")").foregroundColor(.gray)
                                    .font(.system(size: 20))
                            }
                        }
                    }
                }
            }
            else {
                Text("No characters to edit.")
                    .font(.system(size: 20))
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
                                   
    func binding(for key: String) -> Binding<CharacterMod> {
            return Binding<CharacterMod>(
                get: { characters[key, default: CharacterMod(name: "", gender: .nonbinary, nameColor: .red)] },
                set: { newCharacter in
                    characters[key] = newCharacter
                }
            )
        }
}

