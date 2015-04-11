ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait, there's not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ')
more_stuff = ["day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make sure there's 10 items in the list.

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] #Woah! Fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#") 
