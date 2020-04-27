# Coding Bootcamp Text Adventure


## **DISCLAIMER**
**This game does not represent any one coding bootcamp. It is just an interpretation.
Also, the goal of this game is to graduate and get a job. Completing the basic obstacles in this game does not entitle anyone to these**


---

## Statement of Purpose

The goal was to develop a terminal application that resembles someone learning to code. A re-imagining of the experiences that programmers will face in a learning environment to some small degree. The game must provide challenges, fun, laughs, but most importantly, reiterate the values of Growth Mindset. The game is inspired from, more-or-less, every episode of the TV show Scrubs. This show provided challenges to the main character and laughs along the way, but majority of episodes, there was always something the main character learnt, a life lesson for example, which is what I hoped to encapsulate.

Finishing the game is when you have enough EXP to be able to look for a job, or depending on what you did through your journey, you may receive a job offer.

The problem I hoped to solve with my choice of a text adventure game, apart from the main concept of enjoyment, was to use the life lesson of having the user see the value of helping others. Because, not only do they get experience if they choose to, but they get to help another person along the way. I believe I managed to scratch the surface of this goal in the time frame provided. 

The audience for the game is mainly tailored towards a programmer. As the type of questions that are presented to the user throughout the game are coding based, so for a non-programmer, these would be quite difficult, still possible, but a lot more time consuming. This game is also specifically tailored towards a programmer who is in the learning stages. We are all always learning, but a new programmer is someone who faces these types of challenges every day, and these users will receive the most enjoyment for the game.

I had never developed a game myself which is why I chose to undertake my first one as a text adventure, which seemed appropriate for a terminal app as well. Putting enjoyment at the front of design (apart from UI) was a challenge I enjoyed. Also combining all the topics I had learnt so far into one coherent design, one helluva fun time.

---

## Features

1. Player will face challenges involving 3 questions to level up

    There will be 3 main stages/levels throughout the game. Each stage will include 3 coding questions. These questions are to be somewhat challenging as I want the use to have to think about them, and maybe even Google them, without feeling like they are too hard that they can't do them. However, if they are a bit too hard, the player has options to ask for help, move on, or give up. The 'ask-for-help' method will first ask the player to Google themselves. After researching the question themselves, if they are still stuck, a hint will be provided to the player and the question will be asked again, with the option to earn the full amount of EXP for the Question. Also awarding bonus points if they succeed in finding the solution themselves.

2. Player can level up with extra activities

    After each of the 3 challenges/stages, the player will be provided with an option to earn extra EXP should they wish. Without them knowing, they will actually need to do these activities. This is because the level of EXP needed to complete the game is higher than just completing the challenges. This was chosen due to the resemblance in a Coding Bootcamp of the need to work on one's personal branding, portfolio and general programming skills in giving themselves the best chance in being able to acquire work after graduating. The extra activities mentioned will be options to work on their programming skills and personal branding. In the initial release, these will not have any functionality apart from a timer placed on them to resemble that doing these activities does actually take time in real life.

3. At multiple points the user is asked if they want to give up

    The need to include this feature is a must. Inside the game, it wont do much apart from display a message and exit the game. However, I always want this idea to be present when someone is facing a challenge due to the nature of it being present in our daily lives. It is always there, we always have that option to give up, but the most successful ones are the people who pursue through the toughest of challenges with lots of hard work. At the moment there is no extra plan to develop this feature further. Personally I hope no one chooses this option, however, it just kicks them from the game and they lose all progress. 

*Other Included Features*
- player will receive different amounts of EXP depending on how they complete the challenges
- if player does not not reach the desired EXP, they are required to undertake extra activities before completion to level up
- if player manages to get enough EXP, they reach a secret level where they are offered a job at the end of the game (because they worked hard during the course of their journey)
- there will be an enemy that can pop up multiple times in the game that reduces their EXP initially but they have the option to earn that EXP back and some, depending on how they react


 *Nice to Have Features / Planning to Implement*
- Have EXP levels for each sub class of extra activities. They would contribute by having modifiers to the EXP that is earnt. e.g. Helping others would earn a different amount than racing through challenges. They would all be displayed in an RPG format when a player wants to see their characters level.
- The questions could be layered in 3 levels of difficulty, for now they are just kept all the same difficulty. e.g. There was a feature initially for a player to choose to start out as Advanced, or Beginner or a Noob. So the questions would start out a lot harder for the Advanced player. However this feature was put aside due to time constraints and it being there in a simple form without modifiers felt like cheating, for first release 
- add functionality to tweets/codewars and so forth, rather than just a wait func
- add more than 3 questions in to challenges
- display more ascii characters around, regarding a levels, extra activities and enemies
- add a stage and question number counter in the header
- add the ability for user to download their certificate of graduation at end of the game
- make some fake companies that they can apply for or receive a job offer from
- have different difficulties of questions as they level up
- player can choose to start out at different levels (Master, Advanced, Beginner and Noob) and they will receive difficult questions earlier
- add in ability for player to see how many Tweets and Blogs they have written, even show their contents (as they are not stored)

---

## USER INTERACTION (UI) and EXPERIENCE (UX)

The user will be welcomed with the game's logo and a tty-prompt to start the game to teach them how to play the game.

Doubling up on User Interaction and Error Handling, the use of the Ruby Gem 'tty-prompt' was chosen for its simplicity in navigating through the app (also giving the user knowledge on how to select the options), stopping the game loop and significantly reducing user input validation. Any time a user needs to input text, the use of recursion achieves our problem. Choosing specific moments for text input was included as well, specifically at the end of the game, and inputting their name. Using text input to restart the game means that the user has to remove their fingers from the Enter and Arrow keys, allowing them time to think about their answer. User validation and error handling has been enabled in these areas.
Keeping the game simple with easy navigation, colouring of text for different type of messages has allowed the look and feel of the app to be coherent and easy to understand for the user.

Here are some very early, extremely rough concepts of how I wanted the game to look. Don't just my hand-drawing design skills please.


![Main Screen](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/UI-ideas/Main-UI.pdf)	

![Challenge Screen](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/UI-ideas/Challenges_tweets-UI.pdf)	


---

## IMPLEMENTATION PLAN

### Control Flow Diagram

I have included 2 flow charts, my original, and my updated one. The updated one is fairly different, the underlying concept of the game is still there, but changed due to a change in development. This major change in development happened when challenges were discovered to not be as fun and interactive as originally planned. This change condensed the flow and also added a significant enjoyment bonus. There are 2 folders in the docs showing the differences. Below are the 2 flow charts showing the changes. Details outlining the change in Challenges can be found in the [Development log](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/development-log.md).

1. Original Flow chart:

![Original Flow Chart Screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/implementation-plan-trello-board.png)

2. Updated Flow Chart:

![Updated Flow Chart Screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/updated-flow-chart/entire-app-flow.jpg)



### Trello Board 

The project management application used to complete these tasks was Trello. This program allowed me to develop outlines for the majority of the application, including features, methods, timelines and so forth. Without this plan, implementing the application would have been significantly more difficult. Next project I intend to flush this out even more as now that I have used it once, understand how to better set up the project from the beginning. 


- [Trello Board](https://trello.com/b/hdiSXwWJ/codingbootcamptextadventure)


### Presentation

Here is a link to my [Google Slide Presentation](https://docs.google.com/presentation/d/1skDW5dOQmxmbZVYYjgGwsOtw0axuxGczf0Pi4Acf4y8/edit#slide=id.g8422e20969_1_91) that I plan to present before I play my app. I just hope to give a quick run down of how my week went based off of these headings.

---

## Development Log


- [Development log](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/development-log.md)

### Major Milestone near Halfway
When scrolling through the 'tty-prompt' Gem, I can't remember what I was looking at, but I managed to come up with the idea of how to make the much more interactive and fun to play. Initially the challenges were going to consist of a lot of wait (sleep) methods, which would resemble people learning and stumbling. However, the idea I came up with was to incorporate real coding questions into the challenges. The MCQ Kahoot questions in the bootcamp I attend heavily inspired the style.
This would change a large chunk of my plan for Challenges, but it was worth undertaking as the game would be much more enjoyable. I still used the fundamentals of the original Challenges Flow Chart, but would alter it them, in turn making the flow more condensed as well. As can be seen in the 2 images provided.

Original Challenges:

![original-challenge-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/flow-chart-original/challenges-flow.jpg)

Updated Challenges: 

![updated-challenge-flow-screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/flow-chart-updated/challenge-flow.jpg)



### Midway Final Testing Status Update

For the most part, the design of my app didn't sway from original idea. There was the change in how Challenges worked, and how that Extra Activities just showed a countdown timer instead of giving the player an option to select what how to react to it (as I wanted to strongly suggest the time taken to do these tasks is time worth spent, rather than giving the player a cheat way to earn EXP). I mainly tested the game throughout the development to ensure the functions were working as intended. Enough time wasn't spent on developing the testing criteria initially, this was due because I felt the use of 'tty-prompt' would solve a lot of my User Input issues. It did, but a colleague raised my attention to an area where I could have tested to ensure the correct data was being sent between methods. I have taken this as a learning curve to focus more on it next time. That should reduce some debug time, however that should not detract away from the importance of testing throughout development. As the 'feel' of your app needs to be taken into account and sometimes that can only be seen when it's happening in front of us. 

---

## **Testing**

When creating this game, I used a majority of manual testing during development. Tests that I conducted in different sections of the app are included below. I also used [test-unit](https://github.com/test-unit/test-unit) to create a few tests to check the creation of a sub class instance, and then the EXP that is earnt from creating that instance is then appropriately applied to the player's EXP level. These tests can be seen in this file, [testing.rb](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/src/classes/testing.rb). Also when discussing my testing with a fellow student, he asked why I had Twitter as a grandchild of ExtraActivities. I agreed it was overly complicated for an MVP. However, the reason I chose to code it this way is for future functionality as I intend to access each sub class (Twitter Medium etc) and be able to show how many total Tweets amd Blogs have been written, also checking what those Tweets and Blogs were, which means they will be stored. This is why I chose to write it the way I have, and have one instance of a countdown timer in the grandparent class ExtraActivities to keep my code dry.

| Feature                                                                         | What it does                                                                                  | Expected Outcome                                                                               | Actual Outcome                                                                  | Fix                                                                                                                  | Remaining Issues |
|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|------------------|
| **EXTRA ACTIVITIES**                                                            |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| List of Extra Activities                                                        | A hash of extra activities that will be passed into the tty-prompt gem to display to the user | For it to display all 11 options to the user                                                   | Only displayed 6 but could scroll through them all, want whole list to display  | There was a per page attribute to the gem that allowed all questions to display                                      | Nil              |
| Twitter Extra Activity                                                          | Resembles time taken to write a tweet                                                         | To display message and display the countdown timer                                             | Message flashed only flashed on screen and countdown timer startsed immediately |                                                                                                                      | Nil              |
| Countdown timer displaying correctly                                            | Displays a countdown timer                                                                    | To show a countdown and a message at the end                                                   | Worked as expected                                                              |                                                                                                                      | Nil              |
| Pass information from Twitter sub class to countdown timer in grandparent class | Pass a custom message to display in the countdown timer when it reaches time up               | Display a message                                                                              | Worked as expected                                                              |                                                                                                                      | Nil              |
| Count how many tweets, personal brandings and extra activities user has done    | Will allow the player to know how many extra activities they have completed                   | For all the classes to count correctly when the Twitter class is triggered                     | Worked as expected                                                              |                                                                                                                      | Nil              |
| Getting the Extra activities to fire with a lamda in main function              | When the player reaches this section the function works correctly                             | For it to go into the twitter subclass function                                                | Worked as expected                                                              |                                                                                                                      | Nil              |
| Quit game in Activity                                                           | For the user to quit the game from this section                                               | For the game to end                                                                            | Worked as expected                                                              |                                                                                                                      | Nil              |
|                                                                                 |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| **CHALLENGES**                                                                  |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| Displays the questions to user in challenges                                    | Displays the questions to user with the prompt                                                | Display the list                                                                               | It displayed the answers in the prompt as well which obviously can't be a thing | I can force which elements in the list to display, meaning I could hide the answer correctly                         | Nil              |
| 3 questions in a challenge                                                      | Display 3 different questions on each loop in the challenge class                             | To display a different question each loop                                                      | Didn't display                                                                  | The variable that was being passed in was incorrect, ended up going with passing symbol in the question              | Nil              |
| Have 3 challenges in game                                                       | Goes through all 3 chgs planned for the game                                                  | To go through the list of 3 questions 3 times                                                  | Worked as expected                                                              |                                                                                                                      | Nil              |
| Quit game in Challenge                                                          | For the user to quit the game from this section                                               | For the game to end                                                                            | Worked as expected                                                              |                                                                                                                      | Nil              |
| User selects don't know in question                                             | Displays a message with answer and moves to next question                                     | Displays a message with answer and moves to next question                                      | Worked as expected                                                              |                                                                                                                      | Nil              |
| Get a random key value from a hash                                              | Selects a random key value from a hash of questions                                           | Selects a random key value from a hash of questions                                            | Worked as expected                                                              |                                                                                                                      | Nil              |
| Have 9 questions in the game                                                    | Have a different question for loop for each challenge in the game                             | To display a different question each time                                                      | Worked as expected                                                              |                                                                                                                      | Nil              |
|                                                                                 |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| **UI**                                                                          |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| Headers on app                                                                  | Displays the man logo to the player for UI                                                    | Expected to sit in the middle of terminal with appropriate colouring                           | Colours worked, sits just off middle, small adjustments made                    |                                                                                                                      | Nil              |
|                                                                                 |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| **USER VALIDATION**                                                             |                                                                                               |                                                                                                |                                                                                 |                                                                                                                      |                  |
| User inputting their name                                                       | To not accept an empty string                                                                 | For the header and question to be displayed each time, also with an error message if incorrect | Messaged flashed and screen was just asking for the name again                  | Added the press any key method in there (which includes a gets) to stop the retry method from firing instantaneously | Nil              |
| User inputting their response to restart the game                               | To not accept an empty string                                                                 | For the header and question to be displayed each time, also with an error message if incorrect | The questions displays again and again                                          |                                                                                                                      | Not yet fixed    |



------



## Resources

### Gems used:

Your Coding Journey utilizes these gems for the main flow of the app and for an enhanced user experience. 
* [Bundler](https://bundler.io/) - Used to handle all Gem installs. Also allowing the player to set up the necessary plugins to run the game. 
* [TTY-Prompt](https://github.com/piotrmurach/tty-prompt) - To enable the computer to easily navigate the console and delete lines.
* [TTY-Spinner](https://github.com/piotrmurach/tty-spinner) - Enables loading in the game to represent something happening in the background (checking the player's info)
* [IO-Console](https://github.com/ruby/io-console) Used to retrieve the width of the window to display the logo in the centre and the appropriate amount of hyphens.
* [Faker](https://github.com/faker-ruby/faker) - Used to display Tweets, blogs, educator and students' names
* [Colorize](https://github.com/fazibear/colorize) - Enables the use of coloured outputs in the Terminal for better UX in UI
* [Test-Unit](https://github.com/test-unit/test-unit) - Was used to assist in Test Driven Development.

### ASCII Art Generator

Utilised the following link for the Header ASCII art:

[http://patorjk.com/](http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)


---

## Author
Simon Curran



