# # this is an infinite loop
# done = false

# while !done
#     puts "Lol"
# end

# puts "Give me your age."
# $stdout.flush
# age = gets.chomp.to_i

# while age < 0
#     puts "That's not a real age, dummy. Try again."
#     $stdout.flush
#     age = gets.chomp.to_i
# end

# i = 0
# while i < 3
#     puts "Hi"
#     i = i + 1
# end

# # does the same thing as the code above
# 3.times do
#     puts "Hi"
# end

# # prints letter e 3 times, can move through strings this way
# i = 0
# x = "hello"
# x.size.times do
#     puts x[1]
#     i = i + 1
# end

# # prints every even number 0-100 -> while -> times
# i = 0
# while i<100 do
#     puts i
#     i = i + 2
# end

# x = 0
# 50.times do
#     puts x
#     x = x + 2
# end

# # just has to have some sort of consistent pattern
# i = 0
# 10.times do
#     puts i
#     i = i + 1
# end

# # the following two sections of code go together, looping with lists
# nums = [3, 5, 4, 3, 5] # examlpe of list of integers
# letters = ["a", "b", "c"] # example of list of strings
# prices = [5.99, 2.00, 0.99] # example of list of floats
# puts nums[0] # 3
# puts nums[-4] # 5
# puts nums[nums.size] # nothing, there is no spot 5
# puts nums[nums.size - 2] # 3, spot -2 is 3

# i = 0
# while i < nums.size
#     puts nums[i]
#     i = i+1
# end

# # gives each number one by one, exactly the same as the loop above but w/o manual counting
# # the following two chunks of code go together
# nums = [3, 5, 4, 3, 5]
# nums.each do |num|
#     puts num
# end

# count = 0
# nums.each do |n|
#     if n == 3
#         count = count + 1
#     end
# end
# puts "Count of 3s: #{count}"

#prints out the sum of list
nums = [1, 2, 3, 4, 5]
sum = 0
nums.each do |n|
    sum = sum + n
end
puts sum
print nums # prints prints stuff as it appears in the code, brackets and all in this case
puts "hello" # if puts is put right after prints, there won't be a line break when this code is run

# prints a list from a string
x = "abcdef"
x.size.times do |i|
    puts x[i]
end