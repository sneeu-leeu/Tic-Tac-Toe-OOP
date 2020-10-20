#!/usr/bin/env ruby

# Mindmap / Pseudo code

# Player Input:

puts "Welcome to tic tac toe, Please enter the player names on consecutive lines."


while true
    player_1 = gets.chomp 
    player_2 = gets.chomp

if player_1 == player_2 # if the player name is equal, the program should return
    puts "Please enter a distinctive name"
elsif !player_1.empty? and !player_2.empty? # if the player_1 and player_2 is not empty, 
    puts "welcome #{player_1} and #{player_2}, happy gaming"
   #break we break the loop
elsif player_1.empty? and player_2.empty? 
  puts "Please enter your names"
else # needs  both names
  puts "Both names are required"
end

#Assign either X or O to a player:
#either random or always P1 = X, ect.
puts "#{player_1} you are X"
puts "#{player_2} you are 0"

#countdown to the game:
puts "The game commences in:"
puts 3
sleep(10)
puts 2
sleep(10)
puts 1:

#Create and Display the game board

board = [1,2,3,4,5,6,7,8,9]

#   |  | 
# -- -- --
#   |  |
# -- -- --
#   |  |


board_1 = [#Player1 used positions]

board_2 = [#Player2 used positions]

breakpoint = board.length #lentgh of array determining the length of loop

# while breakpoint != 0 do

  # p "#{player_1} turn, please choose between #{board}"
    
    # while true  
        # choice_1 = gets.chomp.to_i 
        
        #Test if value is valid and remove chosen from future choices, decrease lenght of possible position array determining breakpoin

        # if  board.include?(choice_1)  
        #     board_1 << choice_1
        #     board.delete(choice_1)
        #     breakpoint -= 1
        #     break
        # else
          # p "please choose between #{board}"
        # end   
    # end
    #check for breakpoint
    # if breakpoint == 0
        # puts "the game ended in a draw"
        # break
    # end

   # Check for winning positions and break the loop if == true
    # if board_1 == [1,2,3] or board_1 == [4,5,6] or
    #  board_1 == [7,8,9] or board_1 == [3,5,7] or 
    # board_1 ==[1,5,9] or board_1 == [3,2,1] or 
    # board_1 == [6,5,4] or board_1 == [9,8,7]
        # puts "#{player_1} win"
        # break
    # end

    # repeat loop for player 2
    # puts "#{player_2} turn please choose between #{board}"
    
    # while true
    #     choice_2 = gets.chomp.to_i
    #     if  board.include?(choice_2)
    #         board_2 << choice_2
    #         board.delete(choice_2)
    #         breakpoint -= 1
    #         break
    #     else
    #         puts "please choose between #{board}"
    #     end
    # end
    # if board_2 == [1,2,3] or board_2 == [4,5,6]
    #    or board_2 == [7,8,9] or board_2 == [3,5,7] 
    #    or board_2 ==[1,5,9] or board_2 == [3,2,1] 
    #    or board_2 == [6,5,4] or board_2 == [9,8,7]
        # puts "#{player_2} win"
        # break