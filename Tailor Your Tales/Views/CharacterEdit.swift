//
//  CharacterEdit.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import SwiftUI

struct CharacterEdit: View {
    @Binding var character: Character
    var role: String
    var body: some View {
        HStack {
            Text("Name:")
                .padding(.leading)
            TextField("Enter name", text: $character.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocorrectionDisabled()
                .padding()
            
        }
        .padding()
        .navigationTitle("Editing \(role)")
        
        Picker(selection: $character.gender, label: Text("Gender")) {
                        ForEach(Gender.allCases) { gender in
                            Text(gender.rawValue).tag(gender)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()

    }
}

