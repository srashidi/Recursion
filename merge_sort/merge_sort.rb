def merge_sort(array)
  return array if array.size <= 1
  left,right = array.slice!(0,array.size/2),array
  left = merge_sort(left)
  right = merge_sort(right)
  new_array = []
  until left.empty? || right.empty?
    if left.first <= right.first
      new_array.push(left.first)
      left.shift
    else
      new_array.push(right.first)
      right.shift
    end
  end
  until left.empty?
    new_array.push(left.first)
    left.shift
  end
  until right.empty?
    new_array.push(right.first)
    right.shift
  end
  new_array
end

puts merge_sort([4,6,3,7,1,9,8,1]).inspect
puts merge_sort([10]).inspect