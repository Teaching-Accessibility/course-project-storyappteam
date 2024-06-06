# Tailor Your Tales
Tailor Your Tales is an app for customizing stories for your child. Read on to learn more!

## Group Members

## R1:
Selah: Child UI design, Base text customization research/brainstorming, app setup in Testflight, installation instructions, UI documentation

Dion: Base text customization, minor story edits, UI documentation, README documentation

Daniel: Majority backend work, created skeleton for group members to work off of, did major structural work with structs/data structures

## R2:
Selah: Improving UI design (standardizing colors, making button names more intuitive, etc.). Increasing accessibility (adding alt text, testing bugs found with a screen reader). Helped with brainstorming and implementation for navigation and core data. App testing and rebuilding.

Dion: Improving UI design and navigation (story page destinations), collected, edited, and created story text, added new story pages and information as needed, README documentation, UI documentation

Daniel: Added character images (with 5 emotions each) that are customizable. Added Core Data (local storage) which ensures that character changes persist between launches of the app and between different screens. Added redrawing of changed characters in pre-existing screens. 

## Implemented Features
a.	Inclusive and accessible design: High contrast colors and large fonts have been utilized throughout the app to ensure readability for a wide range of users. 
All interactive elements have been designed with clear labels, and large touch targets, and the included texts work with iOS’s integrated voice-over technology. All images also have alternative text and the app works seamlessly with a screen reader

b.	Library of pre-created customizable positive and routine-focused stories: There are currently 7 stories. 
The stories are positive, simple, easy to read, and were sourced from the participant, developing team, and open source stories on the internet. 
The adult view of the stories page allows for character names and gender customizations.

c.	Separate interfaces for child and adult: The adult’s interface provides more control over the customization of story characters, 
allowing them to adjust the content to suit their child’s story needs. The app opens directly to the child interface as they are the primary users of this app. 
The child interface contains a button leading to the adult view, which contains an “age verifier” to ensure that the younger users aren’t accessing the view without permission. 

d.	Child-friendly UI: The base user interface consists of large buttons, simple words, vibrant colors, minimal text, and intuitive navigation. 
This would help guarantee usability, keep the younger users engaged, and promote independent interaction with the app.

e. Saving app data: Story edits in the adult view are saved locally to the app and the story customizations are persistent between the adult and child view. This ensures that the child is able to interact with the edited stories outside of the adult's view. 

f. Library of pre-created characters: There are currently 11 pre-created character images with a decent range of diversity. The character images can be replaced to better fit the other story customizations. 


## Installation Instructions
This app is intended for use on an iPad.

1) Open your iPad and go to the App Store.
2) Search for [TestFlight](https://testflight.apple.com). This is an app used by Apple for testing apps that are still in development.
3) To install the app, tap the blue Get button, then follow Apple's prompts for entering your password to install the app. 
4) In an internet browser app on the iPad, such as Safari, enter this link: [https://testflight.apple.com/join/7CBzB4pd](https://testflight.apple.com/join/7CBzB4pd)
5) This will take you to a page with installation instructions for the app. Below Step 2 there is a blue button that says Start Testing. Tap on that button.
6) This will open the TestFlight app. You should see the name of our app, Tailor Your Tales, and below that, a blue button that says Install. Tap the Install button.
7) You should see a white spinning circle as the app is installed. Once it is installed, the blue text will change to the word Open. Tap on the Open button to open the app.
8) Once the app is installed, you should also see the app's icon on the home screen. You can also click to access the app from there.
9) Start using the app!

## UI Documentation
### ScreenID: 1

Screen Title: Default home page; child view

User-Computer Interaction: The user-computer interactions on this screen implement the feature library of stories, as this view contains a list of the stories that the users can tap on to read. It also implements a child-friendly UI, as it has big buttons, simple instructions, and bright colors. It also features an accessible design, as the colors have specifically been chosen to provide sufficient contrast for visually impaired users and the text is in an accessible font. 

Design Guidelines: 

1) WCAG 1.4; make content distinguishable from the background by using sufficient contrast and maintaining clear text size and spacing
2) WCAG 3.2; consistent navigation and labeling
3) WCAG 2.4; provide meaningful titles and a larger touch target space
4) Google developer; use of bright colors, simple shapes, and big buttons

![Screen1](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen1.png)

### ScreenID: 2

Screen Title: Child view - unedited default story

User-Computer Interaction: This screen implements the library of customizable stories feature, as users read an unedited default story when they are on this screen. They can tap next to navigate to the next page. This is also an example of child-friendly UI as the buttons are simple, with clear instructions.

Design Guidelines: 

1) WCAG 3.2; consistent navigation and labeling
2) WCAG 3.1; make text content readable and understandable
3) Davis et al; accommodate special interests and fears by providing positive relatable stories and making the story characters customizable
4) Davis et al; design with simple intuitive interactions to ensure easy navigation through stories

![Screen2](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen2.png)

### ScreenID: 3

Screen Title: Adult view age verifier

User-Computer Interaction: When the adult user answers our verification question, they are currently using the separate interface for adult and child users feature. The question asks as a barrier between the two sides of the app, so that only adults can use the adult section. This part of the system also implements child-friendly and inclusive and accessible design, as the fonts and color contrast, as well as the UI layout are specifically designed with clear buttons, simple instructions, readable font, and colors that provide sufficient color contrast according to WCAG standards.

Design Guidelines: 

1) WCAG 1.4; make content distinguishable from the background by using sufficient contrast and maintaining clear text size and spacing
2) Apple Developer; parental gates to ensure ward’s device and internet safety
3) Google Developer; promote joint engagement and build for multiple ages
   
![Screen3](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen3.png)

### ScreenID: 4

ScreenID: 4

User-Computer Interaction: This screen implements a library of customizable stories, as this interface shows the available stories. Adults can click on the stories to customize them. It also features an accessible design, as the colors have specifically been chosen to provide sufficient contrast for visually impaired users and the text is in an accessible font. 

Design Guidelines: 

1) WCAG 1.4; make content distinguishable from the background by using sufficient contrast, and maintaining clear text size and spacing
2) WCAG 3.2; consistent navigation and labeling
3) WCAG 2.4; provide meaningful titles and larger touch target space

![Screen4](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen4.png)

### ScreenID: 5

Screen Title: Adult view - character list 

User-Computer Interaction: This screen implements the feature making the stories in the library customizable because it provides a list of the characters which the user can tap on to edit. 

Design Guidelines: 

1) WCAG 1.4; make content distinguishable from the background by using sufficient contrast, and maintaining clear text size and spacing
2) WCAG 2.4; provide meaningful titles and larger touch target space
   
![Screen5](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen5.png)

### ScreenID: 6

Screen Title: Character edit 

User-Computer Interaction: This screen implements the feature customizable stories because it provides a page for users to edit the attributes of the characters in the story to customize their name and gender.

Design Guidelines: 

1) WCAG 3.2; consistent navigation and labeling
2) WCAG 2.1; enable keyboard functionality
3) WCAG 2.4; provide clear focus and informational headings
   
![Screen6](https://github.com/Teaching-Accessibility/course-project-storyappteam/assets/38673255/13049b84-2f18-45a8-8aa2-21775bb4386b)


### ScreenID: 7

Screen Title: Edited character list

User-Computer Interaction: This screen also implements the customizable story feature because it shows the user that the character that they customized has now been edited. Users can tap to change the customization or customize other characters in the story. Or they can continue on to read the story to their child or have the child read the story themselves. 

Design Guidelines: 

1) WCAG 1.4; make content distinguishable from the background by using sufficient contrast, and maintaining clear text size and spacing
2) WCAG 2.4; provide meaningful titles and larger touch target space
   
![Screen7](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen7.png)

### ScreenID: 8

Screen Title: Adult view - edited character story

User-Computer Interaction: This screen shows the final step to officially implement the customization of the story. In this page, the story has now been customized and the customization shows up as the user flips through the story. It also features clear and user-friendly controls with simple instructions. 

Design Guidelines: 
1)  WCAG 3.2; consistent navigation and labeling
2)  WCAG 3.1; make text content readable and understandable
3)  Davis et al; accommodate special interests and fears by providing positive relatable stories and making the story characters customizable
4)  Davis et al; design with simple intuitive interactions to ensure easy navigation through stories

![Screen8](https://github.com/Teaching-Accessibility/course-project-storyappteam/blob/main/UIDocImages/Screen8.png)

### Resources
1) World Wide Web Consortium. 2018. “Web Content Accessibility Guidelines (WCAG) 2.1” Accessed May 3, 2024. [https://www.w3.org/TR/WCAG21/](https://www.w3.org/TR/WCAG21/)
2)  Davis, M., Dautenhahn, K., Powell, S. and Nehaniv, C. (2010), "Guidelines for researchers and practitioners designing software and software trials for children with autism", Journal of Assistive Technologies, Vol. 4 No. 1, pp. 38-48. [https://doi.org/10.5042/jat.2010.0043](https://doi.org/10.5042/jat.2010.0043)
3) Apple Developer. Building Apps for Kids. [https://developer.apple.com/app-store/kids-apps/](https://developer.apple.com/app-store/kids-apps/)
4) Google Developers. Building for Kids: Designing Engaging Apps. [https://developers.google.com/building-for-kids/designing-engaging-apps](https://developers.google.com/building-for-kids/designing-engaging-apps)







