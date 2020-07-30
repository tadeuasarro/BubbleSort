def bubble_sort_by(array)
	(array.length).times do |x|
		(array.length - (x + 1)).times do |y|
			if array[y + 1] != nil
				case yield array[y], array[y + 1]
				when 1
					pivot = array[y]
					array[y] = array[y + 1]
					array[y + 1] = pivot
				end
			end
		end
	end
end

my_array = ['why', 'howdy', 'constitution', 'hi', 'whatup']

puts "Unsorted array:"
print my_array
puts ''

bubble_sort_by(my_array) do |x, y|
	x.length <=> y.length
end

puts "Sorted array:"
print my_array
puts ''


=begin
names = ["pakistan", "is", "mine", "country"]
print names
names.length.times do |name_1|
    (names.length - (name_1 + 1)).times do |name|
        if names[name + 1] != nil
            if names[name].length > names[name + 1].length
                swap = names[name + 1]
                names[name + 1] = names[name]
                names[name] = swap
            end
        end
    end
end
=end