x = (1..100)
arr = []

x.each { |v| arr << v }


arr.each do |t|
  if t % 3 == 0 && t % 5 == 0
    arr[t-1] = "FizzBuzz"
  elsif t % 3 == 0
    arr[t-1] = "Fizz"
  elsif t % 5 == 0 
    arr[t-1] = "Buzz"  
  end
end  


puts arr 