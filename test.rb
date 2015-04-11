puts "Hello world."
puts "Welcom to the first day of DevPoint Labs"

def test_all(num)
  # Testing if number is even
  if num.even?
    puts "#{num} is even."
     #If even number is divisible by 3
    if num % 3 == 0
      puts "the number is divisible by three!"
    else
      puts "The number is not divisible by three"
    end
  elsif num.odd?
    puts "#{num} is odd"
    if num % 3 == 0
      puts "the number is divisible by three!"
    else
      puts "The number is not divisible by three"
    end
  
  else
    puts "The number does not exist"
  end
end

puts "What number do you want to test?"

number = gets.chomp.to_i

test_all(number)
