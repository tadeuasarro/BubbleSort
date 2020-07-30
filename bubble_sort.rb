def sorting
  my_array = [10, 0, 9, 1, 8, 2, 7, 3, 6, -4, 5]
  yield my_array
end

sorting do |my_arr|
  my_arr.length.times do |arr_1|
    (my_arr.length - (arr_1 + 1)).times do |arr|
      if my_arr[arr + 1] != nil
        if my_arr[arr] > my_arr[arr + 1]
          swap = my_arr[arr + 1]
          my_arr[arr + 1] = my_arr[arr]
          my_arr[arr] = swap
        end
      end
    end
  end
  print my_arr
end


