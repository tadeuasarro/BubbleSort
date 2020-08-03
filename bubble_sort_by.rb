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
end

my_array = %w[why howdy constitution hi whatup]

puts 'Unsorted array:'
print my_array
puts ''

bubble_sort_by(my_array) do |x, y|
  x.length <=> y.length
end

puts 'Sorted array:'
print my_array
puts ''
