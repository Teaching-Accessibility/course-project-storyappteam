//
//  CharacterView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/16/24.
//

import SwiftUI

struct CharacterView: View {
    @State private var isViewOnScreen = false
    @Environment(\.presentationMode) var presentationMode
    
    let story: Story
    @State var characters: [String: Character]
    @State private var showAlert = false
    
    init(story: Story, characters: [String : Character]) {
        CoreDataManager.shared.setupChangeTracking()
        self.story = story
        self._characters = State(initialValue: CoreDataManager.shared.mergeWithCoreData(defaultCharacters: characters))
    }
    
    var body: some View {
        VStack {
            Spacer().navigationBarBackButtonHidden(true)
            Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                Text("Back").font(.custom("Helvetica Bold", size: 30))
                    .frame(width: 150, height: 70)
                    .background(Color(red: 0.5804, green: 0.0863, blue: 0))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    //.offset(x: -60)
                        //.padding(.top, 50)
                    
                    
            }).padding(.bottom, 20).padding(.trailing, UIScreen.main.bounds.size.width * 1.5 / 2)
            Text("Tap on a character to edit them!")
                .font(.custom("Helvetica Bold", size: 50))
            ScrollView(.vertical){
                if characters.count != 0 {
                    ForEach(characters.keys.sorted(), id: \.self) {key in
                        NavigationLink(destination: CharacterEdit(character: binding(for: key), role: key)){
                            VStack {
                                HStack{
                                    Text(characters[key]?.name ?? "")
                                        .font(.custom("Helvetica Bold", size: 30))
                                    Text("(" + (characters[key]?.gender.rawValue ?? "") + ")").foregroundColor(.gray)
                                        .font(.custom("Helvetica Bold", size: 30))
                                }.padding(.top, 40)
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
            HStack {
                
                Button{
                    showAlert=true
                }label: {
                    Text("Reset to Default Characters")
                    
                    .font(.custom("Helvetica Bold", size: 30))
                    .frame(width: 420, height: 100)
                }
                
                .foregroundColor(.white)
                .background(Color(red: 0.5804, green: 0.0863, blue: 0))
                .cornerRadius(10)
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
                .padding(.leading, 20)
                //.padding(.bottom, 20)
                
                Spacer()
                
                NavigationLink(destination: StoryViewAdult(story: story, pageIndex: 0, characters: characters)){
                    Text("Continue to " + story.title)
                        .multilineTextAlignment(.leading)
                    //.frame(maxWidth: .infinity, alignment: .leading)
                        //.padding()

                        .font(.custom("Helvetica Bold", size: 30))
                        .frame(width: 420, height: 100)
                }
                
                .background(Color(red: 0.5412, green: 0.1490, blue: 0.6706))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .padding(.trailing, 20)
            }.padding(.bottom, 40)
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

