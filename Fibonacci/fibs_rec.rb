def fibs_rec(fibs_arr,n)
  fibs_arr.push(0) if n == 1
  fibs_arr.push(0,1) if n == 2
  if n > 2
    fibs_rec(fibs_arr,n-1)
    fibs_arr.push(fibs_arr[-2]+fibs_arr[-1])
  end
  fibs_arr.join(", ")
end

puts fibs_rec([],1)
puts fibs_rec([],2)
puts fibs_rec([],3)
puts fibs_rec([],4)
puts fibs_rec([],5)
puts fibs_rec([],10)