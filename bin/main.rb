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
#end

# Assign either X or O to a player:
# either reandom or always P1 = X, ect.
puts "#{player_1} you are X"
puts "#{player_2} you are 0"
