//
//  StoryViewAdult.swift
//  Tailor Your Tales
//
//  Created by Dion Udokop on 6/4/24.
//

import SwiftUI

struct StoryViewAdult: View {
    @State private var isViewOnScreen = false
    @Environment(\.presentationMode) var presentationMode
    
    var story: Story
    let pageIndex: Int
    @State var characters: [String: Character]
    
    init(story: Story, pageIndex: Int, characters: [String: Character]? = nil){
        CoreDataManager.shared.setupChangeTracking()
        self.story = story
        self.pageIndex = pageIndex
        self._characters = State(initialValue: characters ?? story.characters)
    }
    
    let imageWidth: CGFloat = 400
    
    var body: some View {
        VStack{
            Spacer()
            //Hide autogenerated back button
                .navigationBarBackButtonHidden(true)
            //Replace with larger red back button
            //.toolbar(content: {
               // ToolbarItem (placement: .topBarLeading)  {

            NavigationLink(destination: StoryListAdult()) {
                
                Text("Return to story list")
                    //.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    //.frame(maxWidth: .infinity, alignment: .leading)
                    //.padding()
                    //.background(Color.gray.opacity(0.25))
                    //.cornerRadius(8)
                    .font(.custom("Helvetica Bold", size: 30))
                        .frame(width: 300, height: 60)
                        .background(Color(red: 0.5804, green: 0.0863, blue: 0))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .offset(y: -40)
                        //.padding(.top, 50)
                        .padding(.trailing, UIScreen.main.bounds.size.width * 1.5 / 2)
            }
            
            ScrollView {
                Text(characterNames(from: story[pageIndex].text, with: characters))
                    .font(.system(size: 30))
            }
            
            if let characterCount = story[pageIndex].characters?.count, characterCount > 0 {
                HStack(spacing: calculateSpacing(for: UIScreen.main.bounds.width, imageCount: characterCount, imageWidth: imageWidth)) {
                    ForEach(story[pageIndex].characters!.keys.sorted(), id: \.self) { key in
                        
                        let imageName = (self.characters[key]?.image!.rawValue)! + (story[pageIndex].characters?[key]!.rawValue)!
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: imageWidth, height: imageWidth)
                            .cornerRadius(8)
                        
                        
                    }
                }
                .padding()
            }
            
            if story[pageIndex].choices.count == 0 {
                NavigationLink(destination: StoryListAdult()) {
                    
                    Text("Return to story list")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
            else {
                HStack {
                    ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                        NavigationLink(destination: StoryView(story: story, pageIndex: choice.destination, characters: characters)) {
                            
                            Text(choice.text)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            //.frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.gray.opacity(0.25))
                                .cornerRadius(10)
                                .font(.custom("Helvetica Bold", size: 35))
                                .frame(width: 500, height: 100)
                                .background(Color(red: 0.5412, green: 0.1490, blue: 0.6706))
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1) of \(story.title)")
        .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    isViewOnScreen = true
                    loadCharacters()
                }
                .onDisappear {
                    isViewOnScreen = false
                }
    }
    
    private func calculateSpacing(for screenWidth: CGFloat, imageCount: Int, imageWidth: CGFloat) -> CGFloat {
        let totalImageWidth = CGFloat(imageCount) * imageWidth
        let spacing = (screenWidth - totalImageWidth) / CGFloat(imageCount + 1)
        return spacing
    }
    
    func characterNames(from template: String, with mapping: [String: Character]) -> String {
        var result = template
        for (role, c) in mapping {
            result = result.replacingOccurrences(of: "{\(role)" + "name}", with: c.name)
        }
        return result
    }
    
    func loadCharacters() {
        characters = CoreDataManager.shared.mergeWithCoreData(defaultCharacters: characters)
    }
}


#Preview {
    StoryView(story: nextweek, pageIndex: 0)
}

