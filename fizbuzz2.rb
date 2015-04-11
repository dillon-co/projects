arr = (1..100).to_a

arr.map do |x|
  x % 3 == 0 ? x = '' x += "Fizz" : x = x
  x % 5 == 0 ? x = '' x += "Buzz" : x = x
end