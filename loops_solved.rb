# l - do not have to look at everything in the list
# no loops
# list[x]
def median(list)
    if list.size % 2 == 1
        # odd length lists
        return list[list.size / 2] # 3 / 2 = spot 1
    else
        # even length lists
        return (list[list.size / 2] + list[list.size / 2 - 1]) / 2.0
    end
end
#            0 1 2
puts median([1,2,3])
#            0 1 2 3
puts median([1,2,3,4])

# 1 - does the list start with given number?
def starts_with?(list, number)
    if list[0] == number
        return true
    else
        return false
    end
end

puts starts_with?([1,2,3],1)
puts starts_with?([1,2,3],2)

# 2 - look at everything to solve the problem
def standard_deviation(list)
    sum = 0
    list.each do |n|
        sum = sum + n
    end
    avg = sum / list.size.to_f
    
    sum_of_squares = 0
    list.each do |x|
        term = (x - avg) * (x - avg)
        sum_of_squares = sum_of_squares + term
    end

    return Math.sqrt(sum_of_squares / (list.size - 1))
end

puts standard_deviation([1,2,3,4,5])

# checks if a number is in a list
def list_has?(list,target)
    list.each do |n|
        if n == target
            return true
        end
    end
    return false
end

puts list_has?([1,2,3], 2)
puts list_has?([1,2,3], 5)

# 3 - have to compare a value from a list against everything else in the list
# nested loop
def mode(list)

    max_count = 0
    mode = list[0]

    list.each do |n| # looping thru original list of numbers
        
        total = 0
        list.each do |m| # count how many ns exist in the list
            if n == m
                total = total + 1
            end
        end

        if total > max_count
            max_count = total
            modes = [n]
        elsif total == max_count
           if !list.include?(n)
            modes.push(n)
           end
        end

    end

    return mode

end

puts mode([1,2,2,3,3,3,3,3,4,5])

# checks if the list is increasing
def is_increasing?(last)
    list.(size-1).times do |i|
        if list[i] >= list[i+1]
            return false
        end
        return true
    end
end
puts is_increasing?([2,3,4])
puts is_increasing?([3,2,4])
puts is_increasing?([3,2,2,4])

# sees how many times the word "cat" comes up in a string
def num_cats(str)
    count = 0
    (str.size - 2).times do |i|
        slice = str[i..(i+2)]
        if slice == "cat"
            count += 1
        end
    end
    return count
end

puts num_cats("catdogcat") # 2
puts num_cats("catdogcatcat") # 3
puts num_cats("dog") # 0