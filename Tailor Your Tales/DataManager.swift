//
//  DataManager.swift
//  Tailor Your Tales
//
//  Created by Selah Bellscheidt on 5/20/24.
//  Beginning Code comes from Apple Tutorial, Setting Up Core Data Stack: https://developer.apple.com/documentation/coredata/setting_up_a_core_data_stack
//  Adapted code from CoreDataManager class from a previous project that Selah worked on: https://github.com/thekindlab/AddAltApp/blob/main/Media-Access-App/Media-Access-App/CoreDataManager.swift

import Foundation
import CoreData
import SwiftUI
//Set up DataManager as a singleton (single instance of DataManager will be created)
//DataManager class used to make all changes/operations to Core Data
class DataManager {
    static let shared = DataManager() // Use this instance of DataManager to make changes to core data
    
    // Create a persistent container as a lazy variable to defer instantiation until its first use.
    // persistant container sets up the model, context, and store coordinator, see https://developer.apple.com/documentation/coredata/setting_up_a_core_data_stack for explanation
      lazy var persistentContainer: NSPersistentContainer = {
          
          // Pass the data model filename to the container’s initializer.
          let container = NSPersistentContainer(name: "LocalData")
          
          // Load any persistent stores, which creates a store if none exists.
          container.loadPersistentStores { _, error in
              if let error {
                  // Handle the error
                  fatalError("Failed to load persistent stores: \(error.localizedDescription)")
              }
          }
          return container
      }()
          
      private init() { }
    
    
    //Helper functions to modify core data
    
    //Add a new story
    func addNewStory(new_id:Int64, new_title:String) -> Story
    {
        
        let context = DataManager.shared.persistentContainer.viewContext//get private context
                
        let entity = Story.entity() //get entity component of Photo entity
        let story = Story(entity: entity, insertInto: context) //create new Photo entity
                
        //set photo attributes
        
        do {
            try context.save()
                
        }
        catch{
                
            debugPrint(error)
        }
        return story;
    
    }
    
    //Add a new character
    func addNewChar(new_name:String, new_gender: String, new_image: String) -> Character
    {
        
        let context = DataManager.shared.persistentContainer.viewContext //get private context
                
        let entity = Character.entity() //get entity component of Photo entity
        let char = Character(entity: entity, insertInto: context) //create new Photo entity
                
        //set photo attributes
        char.name = new_name
        char.gender = new_gender
        char.image = new_image
        
        return char
    }
    func modifyChar(char:Character, name:String, gender:String, image: String ){
        char.name = name
        char.gender = gender
        char.image = image
        if DataManager.shared.persistentContainer.viewContext.hasChanges {
                    do {
                        try DataManager.shared.persistentContainer.viewContext.save()
                    }
                    catch {
                        fatalError("Unable to save data: \(error.localizedDescription)")
                    }
                }
    }

    
    //Return story data array
    func loadStoryData() -> [Story]?
    {
        
        let mainContext = DataManager.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Story> = Story.fetchRequest()
        
        do {
            let results = try mainContext.fetch(fetchRequest)
            return results
        } catch {
            debugPrint(error)
        }
        
        
        return nil;
        
    }
    
    //Return character data array for a story with title story_title
    func loadCharData(story_title:String) -> [Character]?
    {
        let mainContext = DataManager.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Story> = Story.fetchRequest()

        do {
            let stories = try mainContext.fetch(fetchRequest) // fetch array of stories in data
            var i=0
            
            while (stories[i].title != story_title){
                i = i+1
            }
            return stories[i].characters?.array as? [Character] ?? []
        }
        
        catch {
            debugPrint(error)
        }
        
        
        
        
        return nil;
        
    }
    
    //Deletes locally stored story data
    func deleteStoryData() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Story")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        let myContext = DataManager.shared.persistentContainer.viewContext
        
        
        do {
            
            try myContext.execute(deleteRequest)
            try myContext.save()
            
        } catch let error as NSError {
            
            debugPrint(error)
        }
        
        print("Deleted story data")
    }
    
    //Deletes locally stored character data
    func deleteCharacterData() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Character")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        let myContext = DataManager.shared.persistentContainer.viewContext
        
        
        do {
            
            try myContext.execute(deleteRequest)
            try myContext.save()
            
        } catch let error as NSError {
            
            debugPrint(error)
        }
        
        print("Deleted character data")
    }
    
    //Test Code
    
    //print image content
    func testLoadStory() -> [Story]?
    {
        
        let mainContext = DataManager.shared.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Story> = Story.fetchRequest()
        
        do {
            let results = try mainContext.fetch(fetchRequest)
            for saved_story in results{
                
                //print some saved meta data
                print("This is the story id \(saved_story.id as Any)")
                print("This is the story title \(saved_story.title as Any)");
            }
            
            return results
        }
        catch {
            debugPrint(error)
        }
        return nil;
    }
}
