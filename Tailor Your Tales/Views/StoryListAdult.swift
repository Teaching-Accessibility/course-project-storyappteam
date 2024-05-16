//
//  StoryList.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI

struct StoryListAdult: View {
    let stories = [nextweek, samstreasures, multiplechoices]
    let columns = [
           GridItem(.adaptive(minimum: 250))
       ]
    var body: some View {
        //Text("Tailor Your Tales").font(.title)
        VStack{
            HStack {
                //App Title
                Text("Tailor Your Tales")
                //.font(.largeTitle)
                    .foregroundStyle(Color(red: 0.5412, green: 0.1490, blue: 0.6706))
                //.font(.system(.body, design: .rounded))
                //.fontWeight(.heavy)
                    .font(.custom("Helvetica Bold", size: 75)).padding(10)
                    //.padding(.leading, UIScreen.main.bounds.size.width / 4)
                
                //Spacer()
                
                //Link to adult interface
                NavigationLink(destination: StoryList()) {
                    Text("Child")
                        .font(.custom("Helvetica Bold", size: 35))
                        .frame(width: 150, height: 100)
                        .background(Color(red: 0.67, green: 0.84, blue: 0.90))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding(.leading, (UIScreen.main.bounds.size.width * 1.5 / 4)).padding(.top, 10)
            }
            //Instructions
            Text("Tap on a blue square to read a story!").font(.custom("Helvetica", size: 35)).padding(6).padding(.trailing, (UIScreen.main.bounds.size.width * 2 / 4))
            
            //Grid of stories
            ScrollView(.vertical){
                LazyVGrid(columns: columns, alignment: .center, spacing: 75){
                    ForEach(stories) {story in
                        NavigationLink {
                            CharacterView(story: story, characters: story.characters)
                        } label: {
                            StoryRow(story: story).frame(width: 250, height: 250, alignment: .center)
                                .cornerRadius(50)
                                .background(Color(red: 0, green: 0.2667, blue: 0.7020))
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        
                        
                        /*ForEach(0 ..< stories.count, id: \.self) {story in
                         NavigationLink {
                         StoryView(story: stories[story], pageIndex: 0)
                         } label: {
                         StoryRow(story: stories[story])
                         }*//*.frame(width: 300, height: 300, alignment: .center)
                             .background(.blue)
                             
                             
                             .font(.title)*/
                    }
                }
                
            }
        }//.navigationTitle("Tailor Your Tales").font(.largeTitle)
        /*List(stories) { story in
            NavigationLink {
                StoryView(story: story, pageIndex: 0)
            } label: {
                StoryRow(story: story)
            }
        }
        .navigationTitle("Stories")*/
    }
}

#Preview {
    StoryList()
}