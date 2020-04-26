![Your Coding Journey logo](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/logo.jpg)


## YOUR CODING JOURNEY
![GitHub followers](https://img.shields.io/github/followers/SimoSultan?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/simo_sultan?style=social)


Source code: [https://github.com/SimoSultan/coding-bootcamp-text-adventure](https://github.com/SimoSultan/coding-bootcamp-text-adventure)


Files:
- [Help](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/help.md)
- [Development log](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/development-log.md)
- [Software Development Plan](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/software-development-plan.md)
- [Flow Chart](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/flow-chart-updated/entire-app-flow.jpg)

---

**DISCLAIMER:**	  
**This game does not represent any one coding bootcamp, it is just my interpretation.	
And spoiler alert, but the goal of this game is to graduate and get a job. Completing the basic obstacles in this game does not resemble how to get a job in the real world** 


---

## Description

**Your Coding Journey** is a text based adventure game inspired by the journey of a person learning the world of development. As the game uses Ruby at its source, the challenges/questions that you face are based off this language. However, most questions should be able to be answered by most developers. At the end, the computer checks whether or not you have enough EXP to be able to apply for a job or offered one.

---

## Motivation

I had never developed a game myself which is why I chose to undertake my first one as a text based adventure game, which seemed appropriate for a terminal app as well. It was my first solid idea that I had come up. Disregarding the failed attempt at trying to use the Gosu Library with WSL as I wanted to make Space Invaders. (that will be a later project on my Mac). The main concept behind the game was resembled after an, more-or-less, any episode of the TV show Scrubs. As JD and the cast always faced a challenge in each episode, and beside all the laughs, there was a life lesson to be learnt. (I have to admit I didn't think of the Scrubs reference till after it was made, however it perfectly encapsulates my idea). The lesson to be learnt from the game stems from Growth Mindset. Helping others, not comparing yourself and persistence can help you achieve your goals. 

---

## Features	

### Current features:  
**spoiler alert**
- player will face challenges involving 3 questions
- player will get different amounts of EXP depending on how they complete the challenges
- at multiple points throughout the game the player is offered opportunities to give up
- player can level up with extra activities
- once player reaches desired EXP, they graduate and look for a job (complete the game)
- if they are not at the desired EXP, they are required to undertake extra activities before completion to level up

### Future features:

- the player can choose if they want to do more extra activities at the end of the game
- add functionality to extra activities and so forth, rather than just a wait func
- add more than 3 questions in to challenges
- store a list of questions in a file in docs, which a script will then put those questions and answers into the app
- display more ascii characters around, regarding a levels, extra activities and enemies
- add question and stage number counter under message
- player can receive a generated graduate certificate to download at the end of the game
- add assignments as another challenge for the player
- have EXP levels for each sub class of extra activities that contribute and also have different modifiers that calculate towards total EXP
- have the ability for a player to start out at different levels (master, advanced, beginner and noob programmers), for initial release, everyone starts out at noob
- have different levels of questions i.e. they will get harder as the game progresses, and also if the player chooses to start out at a higher level they will receive harder questions form the start

---

## Gems used:

Your Coding Journey utilizes these gems for the main flow of the app and for an enhanced user experience. 
* [Bundler](https://bundler.io/) - Used to handle all Gem installs. Also allowing the player to set up the necessary plugins to run the game. 
* [TTY-Prompt](https://github.com/piotrmurach/tty-prompt) - To enable the computer to easily navigate the console and delete lines.
* [TTY-Spinner](https://github.com/piotrmurach/tty-spinner) - Enables loading in the game to represent something happening in the background (checking the player's info)
* [IO-Console](https://github.com/ruby/io-console) - Used to retrieve the width of the window to display the logo in the centre and the appropriate amount of hyphens.
* [Faker](https://github.com/faker-ruby/faker) - Used to display Tweets, blogs, educator and students' names
* [Colorize](https://github.com/fazibear/colorize) - Enables the use of coloured outputs in the Terminal for better UX in UI
* [Test-Unit](https://github.com/test-unit/test-unit) - Was used to assist in Test Driven Development.


---

## Installation Instructions

1. Follow these instructions to [download and install](https://www.ruby-lang.org/en/documentation/installation/) Ruby on your computer. 
2. Download and unzip the project files onto your computer. 
3. Now navigate to the folder you want to install the game in terminal by running:
```
cd ~/ *path to folder you want to install game at*
```
4. Clone the files from this repository by copying the following command line:
```
git clone https://github.com/SimoSultan/coding-bootcamp-text-adventure.git
```
5. From here, navigate to the src folder of the cloned repository by copying:
```
cd coding-bootcamp-text-adventure/src
```
6. Now copy this to run the game:
```
./run-terminal-app.sh
```
**Enjoy!**


---

## Design and Implementation & Project Timeline


[Flow Chart](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/flow-chart-updated/entire-app-flow.jpg):

![Your Coding Journey Flowchart](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/flow-chart-updated/entire-app-flow.jpg)

[My Trello Board](https://trello.com/b/hdiSXwWJ/codingbootcamptextadventure)

![Trello Board Screenshot](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/implementation-plan-trello-board.png)


[Development Log](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/development-log.md)

[Google Slide Presentation](https://docs.google.com/presentation/d/1skDW5dOQmxmbZVYYjgGwsOtw0axuxGczf0Pi4Acf4y8/edit#slide=id.g8422e20969_1_91)

---

## Resources

### Gems used:

Your Coding Journey utilizes these gems for the main flow of the app and for an enhanced user experience. 
* [Bundler](https://bundler.io/) Used to handle all Gem installs. Also allowing the player to set up the necessary plugins to run the game. 
* [TTY-Prompt](https://github.com/piotrmurach/tty-prompt) To enable the computer to easily navigate the console and delete lines.
* [TTY-Spinner](https://github.com/piotrmurach/tty-spinner) Enables loading in the game to represent something happening in the background (checking the player's info)
* [IO-Console](https://github.com/ruby/io-console) Used to retrieve the width of the window to display the logo in the centre and the appropriate amount of hyphens.
* [Faker](https://github.com/faker-ruby/faker) Used to display Tweets, blogs, educator and students' names
* [Colorize](https://github.com/fazibear/colorize) Enables the use of coloured outputs in the Terminal for better UX in UI
* [Test-Unit](https://github.com/test-unit/test-unit) Was used to assist in Test Driven Development.

### ASCII Art Generator

[patorjk.com](http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)



---


## Copyright, ethical, social issues

Copyright wasn't thought to be of concern as the game is free, open sourced and a text-based game. The only issue that was raised before development was that it can't associate with any particular branding qualities from a learning to code course. This made the game text more generic, departing from any issues surrounding this.

---

## License
**Copyright (c) 2020 Simon Curran** for [Coder Academy](https://coderacademy.edu.au).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.

---

## Author
Simon Curran