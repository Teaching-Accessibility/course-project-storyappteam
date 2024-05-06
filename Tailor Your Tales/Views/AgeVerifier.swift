//
//  AgeVerifier.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct AgeVerifier: View {
    
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
    
    @State private var selectedOption: Int?
    @State private var randomIndex = Int.random(in: 0..<4)
    @State private var showAlert = false
    
    var body: some View {
        var question = questions[randomIndex]
        VStack {
            Text(question.text)
                .padding()
            
            // Buttons in a 2x2 grid
            HStack {
                Button(action: {
                    self.selectedOption = 0
                    self.checkAnswer(correctIndex: question.correctAnswerIndex, selectedIndex: 0)
                }) {
                    Text(question.answers[0])
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
                
                Button(action: {
                    self.selectedOption = 1
                    self.checkAnswer(correctIndex: question.correctAnswerIndex, selectedIndex: 1)
                }) {
                    Text(question.answers[1])
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            
            HStack {
                Button(action: {
                    self.selectedOption = 2
                    self.checkAnswer(correctIndex: question.correctAnswerIndex, selectedIndex: 2)
                }) {
                    Text(question.answers[2])
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
                
                Button(action: {
                    self.selectedOption = 3
                    self.checkAnswer(correctIndex: question.correctAnswerIndex, selectedIndex: 3)
                }) {
                    Text(question.answers[3])
                        .frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Result"), message: Text("You selected"), dismissButton: .default(Text("OK")))
        }
    }
    
    func checkAnswer(correctIndex: Int, selectedIndex: Int) {
        // Check if the selected option is correct
        if selectedIndex == correctIndex {
            showAlert = true
            // Perform additional actions for correct answer
            // For example, navigate to another view, etc.
        }
    }
}

#Preview {
    AgeVerifier()
}
