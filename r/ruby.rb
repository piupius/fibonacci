
# Using recursion
def fibo_recursive( number )

  return  number  if number <= 1

  fibo_recursive( number - 1 ) + fibo_recursive( number - 2 )
end



# Using n.times
def fibonnaci( number )

  a = 0
  b = 1

  unless number >= 1
    number.times do
    	temp = a
    	a = b
    	b = temp + b
    end
    return a
  else
    return number
  end

end



#simplifying
def fibo_simplified( number )
  number <= 1 ? number :  fibo_simplified( number - 1 ) + fibo_simplified( number - 2 )
end
