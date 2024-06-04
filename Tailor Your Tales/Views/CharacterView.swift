//
//  CharacterView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/16/24.
//

import SwiftUI

struct CharacterView: View {
    @State private var isViewOnScreen = false
    
    let story: Story
    @State var characters: [String: Character]
    @State private var showAlert = false
    
    init(story: Story, characters: [String : Character]) {
        CoreDataManager.shared.setupChangeTracking()
        self.story = story
        self.characters = CoreDataManager.shared.mergeWithCoreData(defaultCharacters: characters)
    }
    
    var body: some View {
        VStack {
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
            Spacer()
            
            Button("Reset to Default Characters"){
                showAlert=true
            }
            .alert(isPresented: $showAlert) {
                Alert(
                                title: Text("Are you sure you want to reset the characters to their default settings?"),
                                message: Text("There is no way to undo a reset."),
                                primaryButton: .destructive(Text("Reset")) {
                                    print("Resetting...")
                                    CoreDataManager.shared.deleteStoryCharacters(characters: characters)
                                    characters = story.characters
                                },
                                secondaryButton: .cancel()
                            )
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(8)
            
            Spacer()
            
            NavigationLink(destination: StoryView(story: story, pageIndex: 0, characters: characters)){
                Text("Continue to " + story.title)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(8)
            }
            .padding()
        }
        .onAppear {
            isViewOnScreen = true
            loadCharacters()
        }
        .onDisappear {
            isViewOnScreen = false
        }
    }
       
                                   
    func binding(for key: String) -> Binding<Character> {
        return Binding<Character>(
            get: { characters[key, default: Character(name: "", gender: .nonbinary)] },
            set: { newCharacter in
                characters[key] = newCharacter
            }
        )
    }
    
    func loadCharacters() {
        characters = CoreDataManager.shared.mergeWithCoreData(defaultCharacters: characters)
    }
}

