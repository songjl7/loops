# returns how many letter t's are in a paragraph
def countts(paragraph)
    i = 0
    count = 0
    paragraph.size.times do |i|
        if paragraph[i] == "t"
            count = count + 1
        elsif paragraph[i] == "T"
            count = count + 1
        end
    end
    puts count
end
puts countts("Lorem ipsum dolor sit amet yeeetTtT")

# return how many even numbers are in the given list of integers
def counts_even(nums)
    i = 0
    counte = 0
    nums.each do |i|
        if i % 2 == 0
            counte = counte + 1
        end
    end
    puts counte
end
puts counts_even([1,2,3,4,5])

# find the average of a list of numbers
def mean(numss)
    sum = 0
    numss.each do |n|
        sum = sum + n
    end
    puts sum.to_f / numss.size
end
puts mean([1,2,2,1])

# finds the average but ignores the highest and lowest values
def meaner(somelist)
    total = 0
    somelist.each do |n|
        if n != somelist.max || somelist.min
            total = (total + n)
        else
            next
        end
    end
    return total.to_f / somelist.size
end
puts meaner([1,2,3,4,5])

# finds maximum number in a list
def max(numsss)
    return numsss.max
end
puts max([1,3,4,6,3])

# given a list and a number, return true if the list contains niehter the number or any 1s
list = [8, 56, 7, 6]
def no_one_or_n(number, list)
    list.each do |n|
        if list[n] == number
            return false
        elsif list[n] == 1
            return false
        else
            return true
        end
    end
end
puts no_one_or_n(5, list)

# return true if word is a palindrome
def palindrome(word)
    (word.length / 2).times.reduce(true) do |pal, i|
        pal && word[i] == word[-i - 1]
    end
end
puts palindrome("peep")
puts palindrome("cat")
puts palindrome("moom")

# counts how many palindromes are in a sentence
def count_palindromes(sentence)
    i = 0
    countp = 0
    sentence.each do |i|
        if i == i.reverse
            countp = countp + 1
        else
            next
        end
    end
    return countp
end
puts count_palindromes(["the","tacocat","raced","his","racecar"])