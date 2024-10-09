# Read the words from file
x = file("words.txt", 'r')
text = readLines(x, n = -1)

# Function to validate a single alphabet input
validate_input <- function() {
  while (TRUE) {
    b <- readline("Enter your Alphabet: ")
    b <- toupper(b) 
    
    if (nchar(b) == 1 && grepl("^[A-Z]$", b)) {
      return(b)
    } else {
      print("Invalid input! Please enter a single alphabetic character.")
    }
  }
}

# Check if the current fragment is a valid prefix in the word list
is_valid_prefix <- function(fragment) {
  return(sum(grepl(paste0("^", fragment), text)) > 0)
}

# Check if the current fragment forms a valid word
is_valid_word <- function(fragment) {
  return(nchar(fragment) >= 3 && sum(grepl(paste0("^", fragment, "$"), text)) == 1)
}

# Main Ghost game function
ghost <- function() {
  print("Welcome to the Ghost Word Game!")
  
  word_fragment <- ""
  player_turn <- 1
  
  while (TRUE) {
    print(paste0("Player ", player_turn, "'s turn. Current word fragment:", word_fragment))
    letter <- validate_input()
    
    
    word_fragment <- paste0(word_fragment, letter)
    print(paste0("Updated word fragment: ", word_fragment))
    
    
    if (is_valid_word(word_fragment)) {
      print(paste0("Player ", player_turn, " wins! '", word_fragment, "' is a valid word."))
      break
    }
    
    if (!is_valid_prefix(word_fragment)) {
      print(paste0("Player ", player_turn, " loses! '", word_fragment, "' cannot form any word."))
      break
    }
    
    player_turn <- ifelse(player_turn == 1, 2, 1)
  }
}

# Calling the function
ghost()
