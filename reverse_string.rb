stuff = "This is just another string to test with"
  

new_stuff = stuff.split("")
len = new_stuff.length

# Reversing the array
reversed_array = []
while len > -1 
  reversed_array << new_stuff[len] #Putting new_stuff at position l back into the reversed array 
  len -= 1
end

words_array = reversed_array.join("").split(" ") #Joining characters and then splitting the array by spaces

while len <= words_array.length # Thakes the above joined and splitted array sees if its length is less than one
  words_array[len].capitalize!

  len += 2 #Changes the length so it loops through again to do the same thing
end


puts words_array.join(' ')  



#==================================================
#=================================
# This is Carlos's way of doing it. (much simpler)
#=================================
#v v v v v v v v v v v v v v v v v v v v v v v v
#==================================================


#+++++++V++ Origional code ++V++++++++++++++++++++#
def reverse_a_string(string_parameter)
  result = ''
  string_parameter.chars.each do |char|
    result = char + result
  end
  result
end

def capitalize_every_other_word(string_parameter)
  result = []
  array_of_words = string_parameter.split
  array_of_words.each_with_index do |word, i| 
    if i%2 != 0
      result << word 
    else
      result << word.capitalize
    end
  end
  result.join(' ')
end

reverse_string = reverse_a_string(initial_string)
puts capitalize_every_other_word(reverse_string)



# +++++++++++^++Origional Code++^+++++++++

#++++++V++=Refracted Code++V+++++++++ 



initial_string = "This is just another string to test with"


def reverse_a_string(string_paramater)
  result =''
  string_paramater.each_chars do |character|
    result = character + result # This adds the result to character so it prints Char first, effectively reversing the string.
  end
  result
end    


def capitalize_every_other_word(string_paramater)
  string_paramater.split.each_with_index.map do |word, i|
    (i.even? ? word.capitalize : word) # Condition ? do this if true : do this if false
    #the program below is the same as the program above
    #i.even? ? result << word.capitalize : result << word   
    #This is interesting, It stores whatever value the unless finds into the result.
  end.join(' ')    
end

reverse_string = reverse_a_string(initial_string)
puts capitalize_every_other_word(reverse_string) 






#==================================================
#=================================
# One line
#=================================
#v v v v v v v v v v v v v v v v v v v v v v v v
#==================================================



initial_string.reverse.split.each_with_index.map do {|word, i| i.even? ? word.capitalize : word}




#====================================================
#  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
#====================================================
# What the hell
#=====================================
#====================================================
