//
//  StoryList.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/7/24.
//

import SwiftUI

struct StoryList: View {
    let stories = [nextweek, samstreasures, multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures, multiplechoices,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,multiplechoices,nextweek, samstreasures, multiplechoices,nextweek, samstreasures,]
    let columns = [
           GridItem(.adaptive(minimum: 250))
       ]
    var body: some View {
        //Text("Tailor Your Tales").font(.title)
        VStack{
            HStack {
                Text("Tailor Your Tales")
                //.font(.largeTitle)
                    .foregroundStyle(.purple)
                //.font(.system(.body, design: .rounded))
                //.fontWeight(.heavy)
                    .font(.custom("Helvetica Bold", size: 75)).padding(10)
                /*Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Adult")
                })  */          }
            
            Text("Tap on a title to read a story!").font(.custom("Helvetica", size: 35)).padding(6)
            ScrollView(.vertical){
                LazyVGrid(columns: columns, alignment: .center, spacing: 75){
                    ForEach(0 ..< stories.count) {story in
                        NavigationLink {
                            StoryView(story: stories[story], pageIndex: 0)
                        } label: {
                            StoryRow(story: stories[story]).frame(width: 250, height: 250, alignment: .center)
                                .cornerRadius(50)
                                .background(.blue)
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
