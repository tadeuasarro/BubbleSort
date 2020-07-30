def sorting
  my_array = [10, 0, 9, 1, 8, 2, 7, 3, 6, 4, 5]
  yield my_array
end

sorting {|x| print x}



=begin

my_arr = [2, 1, 3, 7, 9, -1, 23, 22, 12, 11]
n = my_arr.length

my_arr.length.times do |arr_1|
  (my_arr.length - (arr_1 + 1)).times do |arr|
    next unless my_arr[arr + 1] != nil

    next unless my_arr[arr] > my_arr[arr + 1]

    swap = my_arr[arr + 1]
    my_arr[arr + 1] = my_arr[arr]
    my_arr[arr] = swap
  end
end
print my_arr

=end
