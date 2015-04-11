def like
  puts "Give me the name of your crush."

  crush = gets.chomp.to_s

  sleep 1

  puts "Does #{crush} like you..."
  options = ["Yes!", "No", "Maybe"]
  answer = options[rand(3)]

  puts "The Answer is"
  sleep 1
  print "."
  sleep 1 
  print "."
  sleep 1
  print "."
  sleep 3
  print answer 
  sleep 1
  puts "\nWould you like to play again?(Y/N)"

  ans = gets.chomp.to_s

  if ans == "y" || ans == "Y" ||ans == "yes"
    like
  else
    puts "Ok Bye" 
  end   
end

like
