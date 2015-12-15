def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand (1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"  # code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"  # code #end_game here
end

def initial_round
  first_card = deal_card
  second_card = deal_card# code #initial_round here
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user# code hit? here
  user_choice = get_user_input
  if user_choice == "s"
    card_total
  elsif user_choice == "h"
    card_total = card_total + deal_card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome  # code runner here
  initial_round
  end_total = hit?(card_total)
until end_total > 21 do
  hit?(card_total)
  display_card_total(card_total)
  end
  end_game(card_total)
  end

