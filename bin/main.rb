#!/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/winner'
require_relative '../lib/board'

puts 'Welcome to tic tac toe  ---  Developed by Tahiry & Stephan'
puts
sleep 1

game = true

while game == true

  puts 'Player 1, Please enter your name'
  player1 = Players.new(gets.chomp)

  puts "Welcome #{player1.name}" unless player1.name.empty?
  puts
  sleep(1)

  puts 'Player 2, Please enter your name'

  player2 = Players.new(gets.chomp)

  puts "Welcome #{player2.name}" unless (player2.name.empty? || player1.name.empty?) || player2.name == player1.name
  sleep(1)
  puts

  compare = Compare.new(player1.name, player2.name)

  if compare.is_equal? && !compare.is_empty?
    puts 'Please enter a distinctive name'

  elsif compare.is_empty?
    puts 'Please enter your names'

  elsif compare.is_missing?
    puts 'Both names are required'

  else
    game = false
  end
end

first_player = Players.new(player1.name, 'X', [])
second_player = Players.new(player2.name, 'O', [])

sleep(1)
puts "#{player1.name} you are #{first_player.sign}"
puts "#{player2.name} you are #{second_player.sign}"
sleep(1)
puts
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

loop do
  puts
  puts board.display
  puts

  puts "Your turn #{current_player.name}"

  loop do
    choice = gets.chomp.to_i
    if board.is_valid?(choice)
      board.update_board(choice - 1, current_player.sign)
      current_player.choice << choice
      break
    else
      puts
      puts "#{current_player.name}, please choose an available slot"
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
  puts 'The game has ended in a draw!'
else
  puts "congrats #{current_player.name}, You Win!"
end
