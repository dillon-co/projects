
@arr = Array.new

def phi(variable)
  # variable shousl be the last thing in the sequence
  count = 0
  while count <= variable
    if count < 2
      @arr << count += 1
    else  
    new_var  =  @arr[- 1] + @arr[- 2]
    @arr << new_var
    end 
  end 
  return @arr
end

phi(3)