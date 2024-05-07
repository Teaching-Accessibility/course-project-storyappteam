//
//  ContentView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 4/29/24.
//

import SwiftUI

struct Login: View {
    var body: some View {
            VStack {
                Text("Are you ")
                    .font(.title)
                    .padding()
                HStack {
                    NavigationLink(destination: AgeVerifier()) {
                        Text("An Adult?")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: StoryList()) {
                        Text("A Child?")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }.padding()
            }.padding()
    }
}

#Preview {
    Login()
}
