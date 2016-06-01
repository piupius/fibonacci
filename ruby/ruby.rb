def fib(numbers, count:)
  numbers << numbers[-1] + numbers[-2]
  return numbers if count == 0
  fib(numbers, count: count -= 1)
end

puts fib([0,1], count: 15).join(', ')
