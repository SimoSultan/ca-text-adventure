![Your Coding Journey logo](https://github.com/SimoSultan/coding-bootcamp-text-adventure/blob/master/docs/logo.jpg)



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
5. If you have Bundler installed already, skip this step, otherwise install Bundler with:

```
gem install bundler
```

6. From here, navigate to the src folder of the cloned repository by copying:

```
cd coding-bootcamp-text-adventure/src
```

7. Now copy this into terminal to run the game:

```
./run-terminal-app.sh
```

---

## How to Play

To work your way through the game, please use your arrow keys to select the response you would like to give.
Once you are happy with your selection, you can use 'Enter' key to select your option.

Also, there are 2 times where you are required to type in information. When entering your name, and when if you would like to restart the game again. 
If an appropriate response is not received, the game will ask you again to submit your answer.

You may need to use Google to find a solution to question. You can use any internet browser and navigate to [Google](https://www.google.com.au/). Include the word 'ruby' when you are searching to find appropriate answers to the questions provided.

### To Exit the Game

There are multiple ways to exit out the the game when you are playing. You can choose the option 'I Give Up', or type in 'quit' in the respective areas. Alteratively, you can finish the game you started and choose not to restart with 'n' when the option is provided.

Also, you can hard exit the game by pressing 'Ctrl + c' on your keyboard. Alternatively, you can close your terminal instance with the red 'X' in the top left corner (if you're using a Mac) or the top right (if you're using Windows).

---

## Features	

### Current features:
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