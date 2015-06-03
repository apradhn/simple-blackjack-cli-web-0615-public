def deal_card
  # code #deal_card here
  Random.rand(1..11)
end

def display_card_total (total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def end_game (total)
  # code #end_game here
  if total == 21
    puts "You got 21! You win!"
  else
    puts "Sorry, you hit #{total}. Thanks for playing!"    
  end
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "s" 
    total
  elsif input == "h"
    total + deal_card
  else
    invalid_command
    total
  end
end

def invalid_command
  # code invalid_command here
  puts "Not a valid command; please try again"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total < 21
    total = hit?(total) 
    display_card_total(total)       
  end
  end_game(total)
end
    