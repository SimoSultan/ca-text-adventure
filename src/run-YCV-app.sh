#!/bin/bash

clear

echo "Welcome to Your Coding Journey"
echo ""
echo "----------------------------------------"
echo ""

# echo "Lets begin the Gem install now"
# echo "Installing Bundler"
# gem install bundler

# echo "Ensuring all required gems are installed"
# bundle install

echo ""
echo "All gems have been installed"
echo ""
echo "----------------------------------------"
echo ""

echo "Before we start, what's your Coder Name going to be for the game?"

read -p "=> " coder_name
echo ""
read -p "Cheers, continue to the game Your Coding Journey? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

echo ""
echo "Running application for the first time now"
echo ""
echo "----------------------------------------"

sleep 1

ruby main.rb $coder_name
