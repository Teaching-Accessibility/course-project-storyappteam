//
//  CharacterEdit.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import SwiftUI

struct CharacterEdit: View {
    @State private var selectedImage: CharacterImage? = nil
    
    let imageColumnCount: Int = 2
    
    var gridItems: [GridItem] {
        Array(repeating: .init(.flexible()), count: imageColumnCount)
    }
    
    @Binding var character: Character
    var role: String
    
    
    init(character: Binding<Character>, role: String) {
        self._character = character
        self.role = role
        _selectedImage = State(initialValue: character.wrappedValue.image)
    }
    var body: some View {
        VStack{
            HStack {
                Text("Name:")
                    .padding(.leading)
                TextField("Enter name", text: $character.name, onCommit: {
                    saveCharacter()
                })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .padding()
                
            }
            .padding()
            .navigationTitle("Editing Character")
            
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 10) {
                    ForEach(CharacterImage.allCases) { imageName in
                        Image(imageName.rawValue + "neutral")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(8)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(selectedImage == imageName ? Color.blue : Color.clear, lineWidth: 4)
                            )
                            .onTapGesture {
                                selectedImage = imageName
                                character.image = imageName
                                saveCharacter()
                            }
                            .frame(height: 200)
                            .clipped()
                    }
                }
                .padding()
            }
            
            Picker(selection: $character.gender, label: Text("Gender")) {
                ForEach(Gender.allCases) { gender in
                    Text(gender.rawValue).tag(gender)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onChange(of: character.gender) {
                saveCharacter()
            }
        }
        .onAppear {
            selectedImage = character.image
        }
    }
    
    private func saveCharacter() {
        CoreDataManager.shared.saveCharacter(character, withKey: role)
    }
}

