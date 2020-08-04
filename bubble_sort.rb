def sorting(array)
  array.length.times do |arr1|
    (array.length - (arr1 + 1)).times do |arr|
      next if array[arr + 1].nil?
      if array[arr] > array[arr + 1]
        array[arr + 1], array[arr] = array[arr], array[arr + 1]
      end
    end
  end
  array
end

my_array = [10, 0, 5, 8, 1, 3, 5, 2, 8, 5, 0, 3, 6, 5, 9]

puts 'Unsorted array:'
print my_array
puts ''

sorting(my_array)

puts 'Sorted array:'
print my_array
puts ''
