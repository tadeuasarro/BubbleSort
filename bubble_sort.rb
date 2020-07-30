my_array = [5, 1, 4, 2, 3, 10, 50, 90, 10, 15, 74, 36, 0, 150, 60]

print my_array
puts ''

my_array.length.times do |y|

  (my_array.length - (y + 1)).times do |x|

    if my_array[x + 1] != nil
      if my_array[x] > my_array[x + 1]

        pivot = my_array[x]
        my_array[x] = my_array[x + 1]
        my_array[x + 1] = pivot

      end
    else
      puts 'It is not set'
    end

  end


end

print my_array
puts ''