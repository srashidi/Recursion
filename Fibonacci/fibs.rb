def fibs(n)
  fibs_array = []
  fib1 = 1
  fib2 = 1
  if n < 0
    puts "Error: Invalid value for n!"
  else
    fibs_array << 0
    (n-1).times do
      fibs_array << fib1
      i = fib2
      fib2 += fib1
      fib1 = i
    end
  end
  fibs_array.join(", ")
end

puts fibs(1)
puts fibs(2)
puts fibs(3)
puts fibs(4)
puts fibs(5)
puts fibs(10)