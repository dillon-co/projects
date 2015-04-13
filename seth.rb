def seth_says_stuff(word)
  puts "\n"
  puts "Your favorite color is #{word}"
  puts "\n"
end

puts "type your favorite color."
seth_says_stuff(gets.chomp)

def add(num1, num2)
  puts "\n"
  puts num1 + num2
end  

puts "Now add 2 numbers."
add(gets.chomp.to_i, gets.chomp.to_i)