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
  if user_choice == "h"
    card_total += deal_card
  elsif user_choice == "s"
    card_total
  else
    invalid_command
    card_total #after each option here, the method needs to return card_total; had I not put it here for ex. it would return nil and then i'd have nil <= 21 in #runner
  end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  cards_sum = initial_round
  while cards_sum <= 21 do
    cards_sum = hit?(cards_sum)
  display_card_total(cards_sum)
  end
  end_game(cards_sum)
end
