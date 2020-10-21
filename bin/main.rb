#!/usr/bin/env ruby

# Mindmap / Pseudo code

# Player Input:

puts 'Welcome to tic tac toe, Please enter the player names on consecutive lines.'

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity

# rubocop:todo Naming/VariableNumber
while player_1 = gets.chomp # rubocop:todo Lint/AssignmentInCondition
  # rubocop:enable Naming/VariableNumber
  puts "Welcome #{player_1}"
  sleep(1)

  player_2 = gets.chomp # rubocop:todo Naming/VariableNumber
  puts "Welcome #{player_2}"
  sleep(1)

  if player_1.empty? and player_2.empty?
    puts 'Please enter your names'

  elsif player_1 == player_2 # if the player name is equal, the program should return
    puts 'Please enter a distinctive name'

  elsif !player_1.empty? and !player_2.empty? # if the player_1 and player_2 is not empty,
    puts 'happy gaming'
    # break we break the loop
    break

  else # needs  both names
    puts 'Both names are required'
  end
end

# Assign either X or O to a player:
# either random or always P1 = X, ect.
sleep(1)
puts "#{player_1} you are X"
puts "#{player_2} you are 0"
sleep(1)
# countdown to the game:
puts 'The game commences in:'
puts 3
sleep(1)
puts 2
sleep(1)
puts 1
sleep(1)
# Create and Display the game board

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

board_tokens = []

board_1 = [] # rubocop:todo Naming/VariableNumber

board_2 = [] # rubocop:todo Naming/VariableNumber

def game_board(board_tokens) # rubocop:todo Metrics/CyclomaticComplexity
  puts " #{board_tokens[0] || ' '} | #{board_tokens[1] || ' '} | #{board_tokens[2] || ' '} "
  puts '-----------'
  puts " #{board_tokens[3] || ' '} | #{board_tokens[4] || ' '} | #{board_tokens[5] || ' '} "
  puts '-----------'
  puts " #{board_tokens[6] || ' '} | #{board_tokens[7] || ' '} | #{board_tokens[8] || ' '} "
end

breakpoint = board.length

puts 'This is your game board.'
puts 'The numbers represent the cell you can choose'

puts ' 1 | 2 | 3'
puts '-----------'
puts ' 4 | 5 | 6 '
puts '-----------'
puts ' 7 | 8 | 9 '

sleep(2)

until breakpoint.zero?

  puts "#{player_1} it is your turn, please choose between #{board}"

  loop do
    choice_1 = gets.chomp.to_i # rubocop:todo Naming/VariableNumber
    if board.include?(choice_1)
      board_1 << choice_1
      board.delete(choice_1)
      board_1.each { |token| board_tokens[token - 1] = 'X' }
      breakpoint -= 1

      break
    else
      puts 'The selected cell is invalid!'
      puts "please choose between #{board}"
    end
  end

  sleep(1)

  game_board(board_tokens)

  if breakpoint.zero?
    puts 'the game ended in a draw'
    break
  end

  if board_1 == [1, 2, 3] or board_1 == [4, 5, 6] or board_1 == [7, 8, 9] or board_1 == [3, 5, 7] or board_1 == [1, 5, 9] or board_1 == [1, 4, 7] or board_1 == [2, 5, 8] or board_1 == [3, 6, 9] or board_2 == [3, 2, 1]
    puts "#{player_1}, you are the winner!"
    break
  end
  puts "#{player_2} turn please choose between #{board}"

  loop do
    choice_2 = gets.chomp.to_i # rubocop:todo Naming/VariableNumber
    if board.include?(choice_2)
      board_2 << choice_2
      board.delete(choice_2)
      board_2.each { |token| board_tokens[token - 1] = 'O' }
      breakpoint -= 1
      break
    else
      puts 'The selected cell is invalid or has already been taken!'
      puts "please choose between #{board}"
    end
  end

  game_board(board_tokens)

  # rubocop:todo Style/MultipleComparison
  next unless board_2 == [1, 2, 3] or board_2 == [4, 5, 6] or board_2 == [7, 8, 9] or board_2 == [3, 5, 7] or board_2 == [1, 5, 9] or board_2 == [1, 4, 7] or board_2 == [2, 5, 8] or board_2 == [3, 6, 9] or board_2 == [3, 2, 1]

  # rubocop:enable Style/MultipleComparison
  puts "#{player_2}, you are the winner!"
  break

end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
