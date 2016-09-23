
def my_min1(arr)
  arr.each_with_index do |el1, idx1|
    bool = true
    arr[idx1+1..-1].each do |el2|
      bool = false if el1 > el2
    end
    return el1 if bool == true
  end
end

#time complexity is either O(n^2)

def my_min2(arr)
  smallest = arr[0]
  arr[1..-1].each do |el|
    smallest = el if el < smallest
  end
  smallest
end

#time complexity O(n)
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min2(list)


def largest_contiguous_subsum(arr)
  result = []

  arr.each_with_index do |el1, idx1|
    i = idx1
    while i < arr.length
      result << arr[idx1..i]
      i += 1
    end
  end

  largest_sum = result.first.inject(:+)
  result.each do |sub_arr|
    curr_sum = sub_arr.inject(:+)
    largest_sum =  curr_sum if curr_sum > largest_sum
  end
  largest_sum
end

def largest_contiguous_subsum2(arr)
  current_sum = 0
  max_sum = 0
  arr.each do |el|
    current_sum += el
    max_sum = current_sum if current_sum > max_sum
    current_sum = 0 if current_sum < 0
  end
  max_sum
end
#time complexity n(n(?)) + n(n!) = O(n*n!)
list1 = [2, 3, -6, 7, -6, 7]
list2 = [-5, -1, -3]

p largest_contiguous_subsum2(list1)
p largest_contiguous_subsum2(list2)
