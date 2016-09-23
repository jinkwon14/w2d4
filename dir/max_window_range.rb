def windowed_max_range(array, w)
  current_max_range = 0

  idx = 0

  while idx + w <= array.length
    window = array[idx...idx+w]
    max = window.max
    min = window.min
    current_diff = max - min

    if current_diff > current_max_range
      current_max_range = current_diff
    end
    idx += 1
  end
  current_max_range
  p current_max_range

end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
