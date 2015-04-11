


def game
  puts "odd or even?"

  input = gets.chomp.to_s

  puts "what number?"
  num = gets.chomp.to_i

  comp_num = rand(0..5)
  puts "The computer picks "
  sleep 1
  puts "\n. . . #{comp_num}!"
  


  final_num = comp_num + num

  if final_num.even?
    sleep 1
    puts "The number is Even!"
    sleep 1
  elsif final_num.odd?
    sleep 1
    puts "The number is Odd!"
    sleep 1
  else
    puts "The number does not exist!"  
  end    


  if final_num.even? && input == "even" || final_num.odd? && input == "odd"
    puts "\nYou..."
    sleep 4
    puts "WIN!"
    sleep 4
    puts ":}"
    sleep 1
  elsif final_num.odd? && input == "even" || final_num.even? && input == "odd"
    puts "You...\n"
    sleep 4
    puts"LOSE"
    sleep 1
    puts ":{"
    sleep 1

  end  
end    

game

puts "Would you like to play again?(Y/N)"

answer = gets.chomp.to_s

if answer == "y" || answer == "Y" ||answer == "yes"
  game
else
  puts "Ok Bye" 
end   

