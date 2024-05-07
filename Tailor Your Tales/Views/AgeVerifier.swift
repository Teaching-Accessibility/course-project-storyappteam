//
//  AgeVerifier.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct AgeVerifier: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    struct Question {
        var text: String
        var answers: [String]
        var correctAnswerIndex: Int
    }
    
    let questions: [Question] = [
        Question(
            text: "What is the capital of France?",
            answers: ["Paris", "London", "Rome", "Berlin"],
            correctAnswerIndex: 0
        ),
        Question(
            text: "What is the largest planet in our solar system?",
            answers: ["Earth", "Jupiter", "Mars", "Saturn"],
            correctAnswerIndex: 1
        ),
        Question(
            text: "What is the chemical symbol for water?",
            answers: ["H2O", "CO2", "O2", "NaCl"],
            correctAnswerIndex: 0
        ),
        Question(
            text: "Who painted the Mona Lisa?",
            answers: ["Pablo Picasso", "Leonardo da Vinci", "Vincent van Gogh", "Michelangelo"],
            correctAnswerIndex: 1
        ),
    ]
    
    @State private var randomIndex = Int.random(in: 0..<4)
    @State private var shouldNavigateToStoryList = false
    
    var body: some View {
        let question = questions[randomIndex]
        VStack {
            Text(question.text)
                .padding()
            
            // Buttons in a 2x2 grid
            VStack(spacing: 0) {
                ForEach(0..<4) { index in
                    Button(action: {
                        if index == question.correctAnswerIndex {
                            // Navigate to StoryList if correct answer is selected
                            shouldNavigateToStoryList = true
                        } else {
                            // Go back if wrong answer is selected
                            presentationMode.wrappedValue.dismiss()
                        }
                    }) {
                        Text(question.answers[index])
                            .frame(width: 150, height: 100)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .navigationDestination(isPresented: $shouldNavigateToStoryList) {
                StoryList()
            }
        }
    }
}

#Preview {
    AgeVerifier()
}
