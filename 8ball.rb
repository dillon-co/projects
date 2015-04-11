def ask
  puts "Ask me a yes or no question."
  q = gets.chomp

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
end


ask

puts "\nWould you like to ask another?"

input = gets.chomp.to_s

if input == "y" || input == "Y" ||input == "yes"
  ask
else
  puts "Ok Bye" 
end   
