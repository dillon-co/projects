def add(num1, num2)
  answer = num1 + num2
  puts answer
end

def minus(num1, num2)  
  answer = num1 - num2
  puts answer
end
                                                    # All 4 functions are math opperations.
def multiply(num1, num2)
  answer = num1 * num2
  puts answer
end

def divide(num1, num2)  
  answer = num1.to_f / num2.to_f
  puts answer
end



def calculator
  puts "What is your first number?"  
  number1 = gets.chomp.to_i                               #Gets the numbers and operation from the user

  puts "What operation?(multiply, divide, add, subtract)"
  op = gets.chomp

  puts "Second number?"
  number2 = gets.chomp.to_i





  if "add" == op
    add(number1, number2)
  elsif "subtract" == op                        #Figures out what operation the user typed
    minus(number1, number2) 
  elsif "multiply" == op
    multiply(number1, number2)
  elsif "divide" == op
    divide(number1, number2)  
  else
    puts "what?"
  end  

  puts "performe another?" 
  another = gets.chomp                    # gets  answer to weather or not the person wants to use it again

  if another == "yes"
    calculator       #Returns to the begining of the function
  else
    puts "Ok, byyyeeeee."
  end

end 


calculator

  

 










