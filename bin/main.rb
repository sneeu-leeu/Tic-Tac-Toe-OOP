#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/winner'
require_relative '../lib/board'

puts 'Welcome to tic tac toe'
puts 'A simple game developed by Tahiry & Stephan'
sleep 1

while true # rubocop:todo Lint/LiteralAsCondition
  puts 'Player 1, Please enter your name'

  player_1 = Players.new(gets.chomp) # rubocop:todo Naming/VariableNumber

  puts "Welcome #{player_1.name}" unless player_1.name.empty?
  sleep(1)

  puts 'Player 2, Please enter your name'

  player_2 = Players.new(gets.chomp) # rubocop:todo Naming/VariableNumber

  puts "Welcome #{player_2.name}" unless (player_2.name.empty? || player_1.name.empty?) || player_2.name == player_1.name
  sleep(1)

  compare = Compare.new(player_1.name, player_2.name)

  if compare.is_equal? && !compare.is_empty?
    puts 'Please enter a distinctive name'

  elsif compare.is_empty?
    puts 'Please enter your names'

  elsif compare.is_missing?
    puts 'Both names are required'

  else
    puts 'happy gaming'
    break
  end

end

sleep(1)


puts
puts 'The game commences in:'
puts 3
sleep(1)
puts 2
sleep(1)
puts 1
sleep(1)

first_player = Players.new(player_1.name,  'X', [])
second_player = Players.new(player_2.name, 'O', [])

sleep(1)
puts "#{player_1.name} you are #{first_player.sign}"
puts "#{player_2.name} you are #{second_player.sign}"
sleep(1)

puts 'The game commences in:'
puts 3
sleep(1)
puts 2
sleep(1)
puts 1
sleep(1)

board = Board.new

round = 1

winner = nil

current_player = first_player

while true

  puts board.display

  puts "Your turn #{current_player.name}"

  choice = gets.chomp.to_i

  while 
    if board.is_valid?(choice)
      board.update_board(choice-1, current_player.sign)
      current_player.choice << choice
      break
    else
      puts "please chooose between the following board"
    end
  end

  is_winner = Winner.new(current_player.choice)

  winner = current_player if is_winner.real_win?

  round += 1

  puts board.display if winner
   
  break if round > 9 || winner 

  current_player = current_player == first_player ? second_player : first_player

end

if winner.nil?
  puts 'The game is ended in a draw!' 
else
  puts "congrats #{current_player.name}"
end