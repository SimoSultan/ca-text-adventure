#!/bin/bash

clear

echo "Welcome to Your Coding Journey"

echo "Installing Bundler"

gem install bundler

echo "Ensuring all required gems are installed"

bundle install

echo "All gems have been installed, running application for the first time"

ruby main.rb