my_array = [0, 9, 1, 8, 2, 7, 3, 6, 4, 5]
counter = my_array.length

my_array.each {|x| puts x}

counter.times do |y|
	(counter-y).times do |x|
		case my_array[x] <=> my_array[x + 1]
			when 1
				pivot = my_array[x]
				my_array[x] = my_array[x + 1]
				my_array[x + 1] = pivot
		end
	end
end

my_array.each {|x| puts x}