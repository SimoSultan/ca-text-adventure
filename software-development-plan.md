# Coding Bootcamp Text Adventure


first commit	
## **DISCLAIMER**
**This game does not represent any one coding bootcamp. It is just an interpretation.
Also, the goal of this game is to graduate and get a job. Completing the basic obstacles in this game does not entitle anyone to these**




## Statement of Purpose
<!-- Develop a statement of purpose and scope for your application. It must include:
- describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it -->
<!-- 300 - 500 words.
Please include this in your software development plan as a separate section with an appropriate heading. -->

<!-- - **Intention** - my app/game is to provide fun for the user by having a few laughs along the way, But most importantly, reiterate the values of a Growth Mindset
- **Solving** - To motivate people into helping others in their coding journey through the game
- **Reason** - I chose to make a game for practice and experience, I have never made one before and I hope to learn a lot from it
- **Audience** - Anyone, but particularly programmers, although this could very well be adapted to any skill someone is learning as these are fundamental issues someone comes across when they're learning
- **UX** - they will just play the game, by using prompts for them to select what they want to achieve (I am using prompts as it will significantly decrease development time with little to no user validation) -->

The goal is to develop an application that resembles someone learning to code in a Coding Bootcamp. A re-imagining of the experiences that programmers will face in a learning environment to some small degree (respective of time frame of development). The game must provide some challenges, fun, laughs, but most importantly, reiterate the values of Growth Mindset. The game is inspired from more-or-less every episode of the Scrubs TV show. This show provided challenges and laughs, but majority of the time in each episode, there was always something the main character learnt from the challenges he faced throughout the episode. To bottle this concept up is challenging, but one that must be taken. Some games don't necessarily solve a problem, apart from the main concept of providing enjoyment to their player base. However, on top of this, the goal of this game is to motivate the user into seeing the value in helping others. Not only do they get experience, but the help the other person along the way. In the time frame provided, to resemble this concept throughout the journey is a must, at least scratching the surface of it. Finally, to finish the game, the player is Graduating/

The reason for this game's creation has been explained above, but to add on the reasoning for myself, is that personally I have never developed a game. Games main goal is to provide enjoyment, so for that to be at the front of design (outside of UI) is a challenge for myself. Putting all the learnt experiences together as a whole will be the challenge for myself. Especially Classes as this topic was new to me. 

Audience for the game is mainly tailored towards a programmer. As the type of questions that are presented to the user throughout the game are coding based, so for a non-programmer, these would be possible, but a lot more time consuming. This game is also specifically tailored towards a programming who is learning to code. We are all always learning, but a new programmer is someone who faces these types of challenges every day, and these users will receive the most enjoyment for the game.

<!-- word count 352 above, not including dot points -->



## Features
<!-- Develop a list of features that will be included in the application. It must include:
- at least THREE features
- describe each feature
Ensure that your features include the following language elements and concepts:
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling
Note: If the features you described do not require you to use all of the above it is likely that your application is not sophisticated enough. Consult with your educator to check your features are sufficient to address the criteria for T1A2-7. -->
<!-- 300 words (approx. 100 words per feature)
Please include this in your software development plan as a separate section with an appropriate heading -->


1. Player will face challenges to level up

    There will be 3 main stages/levels throughout the game. Each stage will include 3 coding questions. These questions are to be somewhat challenging as I want the use to have to think about them, and maybe even Google them, without feeling like they are too hard that they can't do them. However, if they are a bit too hard, the player has options to ask for help, move on, or give up. The 'ask-for-help' method will first ask the player to Google themselves. After researching the question themselves, if they are still stuck, a hint will be provided to the player and the question will be asked again, with the option to earn the full amount of EXP for the Question. Also awarding bonus points if they succeed in finding the solution themselves.

2. Player can level up with extra activities

    After each of the 3 challenges/stages, the player will be provided with an option to earn extra EXP should they wish. Without them knowing, they will actually need to do these activities. This is because the level of EXP needed to complete the game is higher than just completing the challenges. This was chosen due to the resemblance in a Coding Bootcamp of the need to work on one's personal branding, portfolio and general programming skills in giving themselves the best chance in being able to acquire work after graduating. The extra activities mentioned will be options to work on their programming skills and personal branding. In the initial release, these will not have any functionality apart from a timer placed on them to resemble that doing these activities does actually take time in real life.

3. At multiple points the user is asked if they want to give up

    The need to include this feature is a must. Inside the game, it wont do much apart from display a message and exit the game. However, I always want this idea to be present when someone is facing a challenge due to the nature of it being present in our daily lives. It is always there, we always have that option to give up, but the most successful ones are the people who pursue through the toughest of challenges with lots of hard work. At the moment there is no extra plan to develop this feature further. Personally I hope no one chooses this option, however, it just kicks them from the game and they lose all progress. 

**ADDITIONAL FEATURES**  

 *Nice to Have Features*
- Have EXP levels for each sub class of extra activities. They would contribute by having modifiers to the EXP that is earnt. e.g. Helping others would earn a different amount than racing through challenges. They would all be displayed in an RPG format when a player wants to see their characters level.

*Future Features*
- The questions could be layered in 3 levels of difficulty, for now they are just kept all the same difficulty. e.g. There was a feature initially for a player to choose to start out as Advanced, or Beginner or a Noob. So the questions would start out a lot harder for the Advanced player. However this feature was put aside due to time constraints and it being there in a simple form without modifiers felt like cheating, for first release 




## USER INTERACTION (UI) and EXPERIENCE (UX)
<!-- Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user
Please include this in your software development plan as a separate section with an appropriate heading. -->
- **(UX)** - tty-prompt will handle a lot of my user validation as it will significantly decrease development time and bugs
- **(UI)** - ADD PICTURES HERE

Doubling up on User Interaction and Error Handling, the use of the Ruby Gem 'tty-prompt' was chosen for its simplicity in navigating through the app (also giving the user knowledge on how to select the options), stopping the game loop and significantly reducing user input validation. Any time a user needs to input text, the use of recursion achieves our problem. Choosing specific moments for text input was included as well, specifically at the end of the game, and inputting their name. Using text input to restart the game means that the user has to remove their fingers from the Enter and Arrow keys, allowing them time to think about their answer. User validation and error handling has been enabled in these areas.
Keeping the game simple with easy navigation, colouring of text for different type of messages has allowed the look and feel of the app to be coherent and easy to understand for the user.



## CONTROL FLOW DIAGRAM
<!-- - Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML. -->
<!-- Please provide a image file or PDF of your diagram.
Please include this in your software development plan as a separate section with an appropriate heading. -->
I have included 2 flow charts, my original, and my updated one. The updated one is fairly different, the underlying concept of the game is still there, but changed due to a change in development. This major change in development happened when challenges were discovered to not be as fun and interactive as originally planned. This change condensed the flow and also added a significant enjoyment bonus. There are 2 folders in the docs showing the differences. Below there is 4 pictures:
1. Original game loop flow
2. Original challenges flow
3. Updated game loop flow
4. Updated challenge flow



## IMPLEMENTATION
<!-- Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item
You must submit this as a written document, ideally in a tabular format, and it is suggested that you enter your checklists into an appropriate project management application to assist you in completing T1A2-10.
Your checklists for each feature should have at least 5 items. -->

- add picture and link to TRELLO



## STATUS UPDATES
<!-- Write TWO status updates on your application. You must write a status update when:
- you significantly change a feature or your implementation plan at any point
- encounter a significant issue, challenge or roadblock
- are halfway through implementing the features
- prior to / after testing the application
You should submit these logs throughout the course of developing your application.
Each status report should be between 100 - 200 words.
The Development Log should be written in markdown and placed in a file named development-log.md in the root of your source control repository. Ensure you put the date of the log at the top of each log entry.
Please send your log to your educator as a markdown file as you complete them. This is so we can provide you with feedback. -->

- add dev log from TRELLO here



## IMPLEMENT APPLICATION
<!-- Implement all features in the software development plan you have designed. You must utilise a range of programming concepts and structures using Ruby such as:
- variables and variable scope
- loops and conditional control structures
- write and utilise simple functions
- error handling
- input and output
- command line arguments
- importing a Ruby Gem
- using functions from a Ruby Gem -->

- this is the actual app




## TIPS
T1A2-8	Apply DRY (Don’t Repeat Yourself) coding principles to all code produced.
T1A2-9	Apply all style and conventions for the programming language consistently to all code produced.
T1A2-10	Creates an application which runs without error and has features that are consistent with the development plan.

T1A2-11	Design a help file which includes a set of instructions which accurately describe how to use and install the application.
You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
- a written explanation of the different features of the application
- The help file should be 100 - 200 words.

T1A2-12	Design TWO tests which check that the application is running as expected.
Each test should:
- cover a different feature of the application
- state what is being tested
- provide at least TWO test cases and the expected results for each test case
An outline of the testing procedure and cases should be included with the source code of the application and written in markdown.

T1A2-13	Utilise source control throughout the development of the application by:
- making regular commits (at least 20 commits) with a commit message that summarises the changes
- pushing all commits to a remote repository
- You must submit a source control repository as a zip file to satisfy this requirement.
- An outline of the testing procedure and cases should be included with the source code of the application and written in markdown.

T1A2-14	Utilise a project management platform to track the development of the application by:
- having features itemised and broken down into checklists
- setting deadlines, duration or a time-frame for each feature or task
- prioritising tasks
- You must submit screenshots, or a valid export from a project management application to satisfy this requirement. If you are using a non-standard project management application, please discuss with your trainer whether they can access the file. If in doubt, screen capture your project management application and submit screen captures.

T1A2-15	Utilise developer tools to automate the building and testing of the application by:
- writing a script which runs the tests
- writing a script which turns the application into an executable; OR
- packaging the application for use as a module or dependency
- You must submit a script file in with your source control repository to satisfy this requirement.

T1A2-16	Present your terminal application to the class. You must provide a walk-through of the logic of your application and how the application is used. The time limit for your presentation is 5 minutes.