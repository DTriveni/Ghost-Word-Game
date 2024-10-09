# Ghost Word Game in R

This repository contains an interactive implementation of the classic **Ghost Word Game** using R. The game is designed for two players who take turns adding letters to form a word. The goal is to avoid completing a valid word with more than 3 letters, or creating a fragment that cannot possibly form a word.  
This problem is taken from the course offered in MIT - Introduction to Computer Science and Programming in MIT OCW. (The terms of use are in http: // ocw. mit. edu/ terms ).  

## Features
- **Interactive gameplay**: Two players take turns inputting a single alphabet.
- **Input validation**: Ensures each input is a valid single alphabetic character.
- **Dynamic word fragment**: Displays and updates the current word fragment after each turn.
- **Winning and losing conditions**: The game ends when a valid word is formed (longer than 3 characters), or if no valid word can be formed from the current fragment.
- **Scrabble dictionary**: Uses a preloaded word list from the **Scrabble dictionary** to validate the word fragments.

## How to Play
1. Player 1 inputs a letter.
2. Player 2 adds another letter, forming a word fragment.
3. The game continues until one player forms a complete word or creates a fragment that can't form a valid word.

## Usage
To run the game, simply clone the repository and execute the `ghost()` function in R.
