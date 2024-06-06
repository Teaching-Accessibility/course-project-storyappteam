//
//  CharacterEdit.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import SwiftUI

struct CharacterEdit: View {
    @State private var selectedImage: CharacterImage? = nil
    let charDesc = [
                    "alia": "person with dark brown bobbed hair wearing a white longsleeve shirt",
                    "bella": "person with brown curly hair and pink longsleeve shirt",
                    "christine": "person wearing black square-frame glasses with grey, shoulder-length hair and a yellow hoodie with white ties",
                    "derrick": "person wearing black circle frame glasses, with short orange hair in a fade and a mustache and beard. They are wearing a black t-shirt under a blue blazer with a white pocket square",
                    "elizabeth": "person with white hair in a bun on the top of their head, wearing a black t-shirt under a blue blazer with a white pocket square",
                    "joe": "person with a short, dark brown hair in a fade, wearing a gray longsleeve shirt",
                    "matt": "person wearing black, rectangular sunglasses, with short dark brown hair. They are wearing a black longsleeve shirt with a white collar under a gray blazer with a white pocket square",
                    "megan": "person with brown hair in a bun, wearing denim overalls",
                    "nina": "person with wavy, flowing, long brown hair, wearing a light blue shirt",
                    "rohit": "bald person wearing a blue wide-brim hat and a black t-shirt under a blue blazer with a white pocket square",
                    "sarah": "person with long red hair, wearing black square-frame glasses and a black longsleeve shirt with a white collar"
    ]
    
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
                            .accessibility(label: Text(self.charDesc[imageName.rawValue]!))

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

