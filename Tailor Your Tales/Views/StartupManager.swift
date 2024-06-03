//
//  StartupManager.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 6/2/24.
//

import Foundation

class StartupManager {
    init (){
        DataLoad()
    }
    
    func DataLoad () {
        let storiesDataWrapper = DataManager.shared.loadStoryData()
        if(storiesDataWrapper == nil)
        { //if there's problems loading the data.
            
            print("error loading stories Data")
        }
        else
        {
            
            let storiesData = (storiesDataWrapper!)
            
            if(storiesData.count > 0 )
            { //there exists some startup data to use
                
                print(storiesData[0].title!)
            }
            else
            { //no startup data available, => let's create some.
                
                let viewContext = DataManager.shared.persistentContainer.viewContext
                var story = Story(context: viewContext)
                story.id = Int64(0)
                story.title = "Next week"
                
                var char1 = Character(context:viewContext)
                char1.id = "character1"
                char1.name = "Dara"
                char1.gender = "female"
                char1.image = "bella"
                char1.story = story
                var char2 = Character(context:viewContext)
                char2.id = "character2"
                char2.name = "Sam"
                char2.gender = "male"
                char2.image = "joe"
                char2.story = story
                
               //Treasure
                //characters for the story
                //var char1 = DataManager.shared.addNewChar(new_name: "Dara", new_gender: "female", new_image: "bella")
                //var char2 = DataManager.shared.addNewChar(new_name: "Sam", new_gender: "male", new_image: "joe")
                
                //story.character = [char1, char2]
                //char1.story = story
                //char2.story = story
                
                do {
                    try viewContext.save()
                        
                }
                catch{
                        
                    debugPrint(error)
                }

            }
            
            
        }
    }
    func createStories () {
        
        //Treasure
        
        
        
    }
}
