def bad_two_sum?(arr, target)
  sums = arr.permutation(2).map {|el| el.first + el.last}
  sums.include?(target)
end


def okay_two_sum?(arr, target)
  sorted = arr.sort
  first = 0
  second = arr.length - 1
  until first == second
    sum = sorted[first] + sorted[second]
    if sum == target
      return true
    elsif sum > target
      second -= 1
    else
      first += 1
    end
  end
  false
end
#
# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def hash_map(arr, target_num)
  hash = Hash.new(0)
  arr.each {|num| hash[num] = target_num-num unless num == target_num-num}
  hash.values.each {|n| return true if hash.keys.include?(n)}
  false
end


arr = [0, 1, 5, 7]
p hash_map(arr, 6) # => should be true
p hash_map(arr, 10) # => should be false
