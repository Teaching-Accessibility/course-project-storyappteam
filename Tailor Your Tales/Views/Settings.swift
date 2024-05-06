//
//  Settings.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                RoundedRectangle(cornerRadius: 3)
                    .fill(configuration.isOn ? Color.blue : Color.gray)
                    .frame(width: 30, height: 30)
                    .overlay(
                        configuration.isOn ?
                            Image(systemName: "checkmark")
                            .foregroundColor(Color.white)
                            .padding(4)
                        : nil
                    )
                configuration.label
                    .foregroundColor(Color.primary)
            }
        }
    }
}

struct Settings: View {
    @State private var volume: Double = 100
    @State private var isChecked = false
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
                .padding()
            Slider(value: $volume, in: 0...100, step: 1.0)
                .padding()
                .frame(width: 400, height: 100)
            Toggle("Allow child to navigate backwards", isOn: $isChecked)
                .toggleStyle(CheckboxStyle())
                .padding()
        }
    }
}

#Preview {
    Settings()
}
