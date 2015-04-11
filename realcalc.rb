puts "enter you're operation."
opp_array = []
operation = gets.chomp
opp_array << operation.split(' ')

answer = 0


case opp_array
when opp_array.include?('+')
  answer = (opp_array.index('+' - 1).to_i + opp_array.index('+' + 1).to_i)
when opp_array.include?('-')  
  answer = (puts opp_array.index('-' - 1).to_i - opp_array.index('-' + 1).to_i)
when opp_array.include?('/')  
  answer = (puts opp_array.index('/' - 1).to_i / opp_array.index('/' + 1).to_i)
when opp_array.include?('*')
  answer = (puts opp_array.index('*' - 1).to_i * opp_array.index('*' + 1).to_i)
end

puts answer 