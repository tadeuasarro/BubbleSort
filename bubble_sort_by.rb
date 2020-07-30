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