//
//  StoryView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct StoryView: View {
    @State private var isViewOnScreen = false
    @Environment(\.presentationMode) var presentationMode
    
    var story: Story
    let pageIndex: Int
    @State var characters: [String: Character]
    
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

            NavigationLink(destination: StoryList()) {
                
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
                        //.offset(y: -40)
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
                            .accessibility(label: Text(self.charDesc[(self.characters[key]?.image!.rawValue)!]!))
                        
                        
                    }
                }
                .padding()
            }
            
            if story[pageIndex].choices.count == 0 {
                NavigationLink(destination: StoryList()) {
                    
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
                                //.background(Color.gray.opacity(0.25))
                                .cornerRadius(10)
                                .font(.custom("Helvetica Bold", size: 35))
                                .frame(width: 550, height: 70)
                                .background(Color(red: 0.5412, green: 0.1490, blue: 0.6706))
                                .foregroundColor(.white)
                                .offset(y:10)
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
    StoryView(story: samstreasures, pageIndex: 0)
}
