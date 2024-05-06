//
//  CharacterEdit.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/5/24.
//

import SwiftUI

struct CharacterEdit: View {
    @State private var name = ""
    @State private var nameColor = Color.red
    @State private var genderSelection = Gender.male
    @State private var hairLengthSelection = HairLength.short
    @State private var hairTypeSelection = HairType.straight
    @State private var heightInCm: Double = 150
    @State private var skinColor = SkinTone(color: Color(red: 0.78, green: 0.56, blue: 0.47), name: "Medium")
    
    struct SkinTone: Identifiable {
        let id = UUID()
        let color: Color
        let name: String
    }
    
    let skinTones: [SkinTone] = [
            SkinTone(color: Color(red: 0.90, green: 0.72, blue: 0.62), name: "Light"),
            SkinTone(color: Color(red: 0.78, green: 0.56, blue: 0.47), name: "Medium"),
            SkinTone(color: Color(red: 0.50, green: 0.30, blue: 0.20), name: "Dark"),
            // Add more skin tones as needed
        ]
    
    var body: some View {
        VStack {
            Text("Character Edit")
                .font(.title)
                .padding()
            HStack {
                VStack(alignment: .center){
                    TextField("Add name", text: $name)
                        .autocorrectionDisabled()
                        .onSubmit {
                            // Do we need
                        }
                    HStack{
                        ColorPicker("Character color", selection: $nameColor)
                            .frame(width:200)
                            .padding()
                        Circle()
                            .fill(nameColor)
                            .frame(width:70, height:70)
                            .padding()
                    }
                    HStack {
                        ForEach(Gender.allCases, id: \.self) { option in
                            Button(action: {
                                self.genderSelection = option
                            }) {
                                Text(option.rawValue)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(option == genderSelection ? Color.blue : Color.clear)
                                    .foregroundColor(option == genderSelection ? Color.white : Color.primary)
                                    .cornerRadius(8)
                            }
                            .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                    HStack {
                        ForEach(HairLength.allCases, id: \.self) { option in
                            Button(action: {
                                self.hairLengthSelection = option
                            }) {
                                Text(option.rawValue)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(option == hairLengthSelection ? Color.blue : Color.clear)
                                    .foregroundColor(option == hairLengthSelection ? Color.white : Color.primary)
                                    .cornerRadius(8)
                            }
                            .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                    HStack {
                        ForEach(HairType.allCases, id: \.self) { option in
                            Button(action: {
                                self.hairTypeSelection = option
                            }) {
                                Text(option.rawValue)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(option == hairTypeSelection ? Color.blue : Color.clear)
                                    .foregroundColor(option == hairTypeSelection ? Color.white : Color.primary)
                                    .cornerRadius(8)
                            }
                            .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                    Text("Height: \(String(format: "%.0f", heightInCm)) cm").font(.headline).padding()
                    Slider(value: $heightInCm, in: 100...250, step: 1.0)
                        .padding()
                    HStack {
                        ForEach(skinTones) { tone in
                            Button(action: {
                                self.skinColor = tone
                            }) {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(tone.color)
                                    .frame(width: 80, height: 80)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(self.skinColor.id == tone.id ? Color.blue : Color.clear, lineWidth: 2)
                                    )
                                    .padding()
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                
                
                // Character preview
                
                
                VStack(alignment: .center){
                    Text("\(name)")
                    // TO-DO: Character preview
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            
            HStack(spacing: 90){
                Button("Cancel", action: {
                    
                }).padding().background(Color.red).foregroundColor(.white).cornerRadius(10)
                Button("Confirm", action: {
                    
                }).padding().background(Color.blue).foregroundColor(.white).cornerRadius(10)
            }
        }
    }
}

#Preview {
    CharacterEdit()
}
