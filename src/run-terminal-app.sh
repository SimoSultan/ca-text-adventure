#!/bin/bash

clear

echo "Welcome to Your Coding Journey"

echo "Installing Bundler"

gem install bundler

echo "Ensuring all required gems are installed"

bundle install

echo "All gems have been installed"

#echo "Before we start, what's your Coder Name going to be for the game?"
# user = coder_name
#read - "=>  " coder_name
#read -p "Continue to game? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1


#ruby main.rb coder_name
ruby main.rb