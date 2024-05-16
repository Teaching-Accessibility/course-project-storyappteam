import SwiftUI

let multiplechoices = Story(
    id: 2,
    title: "Multiple Choices",
    previewImage: Image(systemName: "heart"),
    pages: [
        StoryPage( // 0
        """
        Where will I go? The beach or the mountains?
        """,
        choices: [
            Choice(text: "Beach", destination: 1),
            Choice(text: "Mountains", destination: 2)
        ]
                 ),
        StoryPage( // 1
        """
        It is warm here.
        """,
        choices: [
            
        ]
                 ),
        StoryPage( // 2
        """
        It is cold here.
        """,
        choices: [

        ]
                 ),
    ], characters: charactersDictionary)
