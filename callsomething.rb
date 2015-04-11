def callSomething(variable)
    var = (variable + callSomething(callSomething(12)))
  return var
end


puts callSomething(3)