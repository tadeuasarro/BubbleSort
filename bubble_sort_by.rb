def bubble_sort_by(array)
  array.length.times do |x|
    array.length - (x + 1).times do |y|
      next if array[y + 1].nil?

      case yield array[y], array[y + 1]
      when 1
        pivot = array[y]
        array[y] = array[y + 1]
        array[y + 1] = pivot
      end
    end
  end
  array
end

my_array = %w[hello hey hi]

puts 'Unsorted array:'
print my_array
puts ''

puts 'Sorted array:'
print bubble_sort_by(my_array) {|x, y| x.length <=> y.length}
puts ''