# my_array = [5, 1, 4, 2, 3, 10, 50, 90, 10, 15, 74, 36, 0, 150, 60]
#
# print my_array
# puts ''
#
# my_array.length.times do |y|
#
#   (my_array.length - (y + 1)).times do |x|
#
#     if my_array[x + 1] != nil
#       if my_array[x] > my_array[x + 1]
#
#         pivot = my_array[x]
#         my_array[x] = my_array[x + 1]
#         my_array[x + 1] = pivot
#
#       end
#     else
#       puts 'It is not set'
#     end
#
#   end
#
#
# end
#
# print my_array
# puts ''

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
