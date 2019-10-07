# # given a list of integers, return true if the value 3 appears in the array exactly 3 times, and no 3s are next to each other
# def threed(list)
#     count_threes = 0
#     list.size.times do |i|
#         slice = list[i..(i+1)]
#             if slice == [3,3]
#                 return false
#             end
#         if list[i] == 3
#             count_threes += 1
#         end            
#     end
#     if count_threes == 3
#         return true
#     else
#         return false
#     end
    
#     return true
# end

# puts threed([2,3,4,3,5,3]) # true
# puts threed([1,2,3,3,4,3]) # false
# puts threed([1,2,3,4,3,6]) # false


# # given a list of integers, return true if the array length is 1 or more, and the first and last element are equal
# def same_first_last(listy)
#     if listy[0] == listy[-1] && listy.size > 1
#         return true
#     end
#     return false
# end
# puts same_first_last([1,2,3,4,1])
# puts same_first_last([1,2,3,4,5])
# puts same_first_last([1])

# # return the string that is between the first and last appearance of the string "bread" in the given string "" or return the empty string "" if there aren't 2 pieces of bread
# def get_sandwich(sammich)
#     bread = []
#     (sammich.size - 4).times do |i|
#         slice = sammich[i..(i+4)]
#         if slice == "bread"
#             bread.push(i)
#         end
#     end
#     if bread.size >= 2
#         pos1 = bread[0] + 5
#         pos2 = bread[1] - 1
#         return sammich[pos1..pos2]
#     else
#         return "That's not a sandwich"
#     end
# end
# puts get_sandwich("breadcheesehambread")
# puts get_sandwich("breadcheese")
# puts get_sandwich("breadcheesebread")

# # return a list that is "left shifted" by one -- so [6,2,5,3] returns [2,5,3,6]
# def shift_left(array)
#     new_array = []
#     if array.size <=1
#         return array
#     end
#     if array.size > 1
#         new_array.push(array[1..-1])
#         new_array.push(array[0])
#     end
#     print new_array
# end
# puts shift_left([1,2,3,4,5])

# # given a non-empty list, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side
# def can_balance(listyay)
#     total = 0
#     listyay.each do |i|
#         total += i 
#     end
#     half = total / 2
#     add = 0
#     listyay.each do |n|
#         add += n
#         if add == half
#             return true
#         end
#     end
#     return false
# end
# puts can_balance([1,2,3,0])

# # return the number of times that the string "code" appears anywhere in the given string, except we'll accept any letter for the 'd', so "cope" and "cooe" count
# def count_code(str)
#     count = 0
#     (str.size - 3).times do |i|
#         slice = str[i..(i+3)]
#         if slice[0] == "c" && slice[1] == "o" && slice[3] == "e"
#             count += 1
#         end
#     end
#     return count
# end
# puts count_code("codecocecolecatcodecarcoge") # 5
# puts count_code("cooecatcatcoke") # 2
# puts count_code("cogehotmackenzienotcotecohe") # 3

# # given 2 number lists, return a new list of length 2 containing their middle elements
# def middle_way(numlist1, numlist2)
#     empty = []
#     if numlist1.size % 2 == 1
#         middle1 = numlist1[numlist1.size / 2]
#         empty.push(middle1)
#     else
#         middle1 = (numlist1[numlist1.size / 2] + numlist1[numlist1.size / 2 - 1]) / 2.0
#         empty.push(middle1)
#     end
#     if numlist2.size % 2 == 1
#         middle2 = numlist2[numlist2.size / 2]
#         empty.push(middle2)
#     else
#         middle2 = (numlist2[numlist2.size / 2] + numlist2[numlist2.size / 2 - 1]) / 2.0
#         empty.push(middle2)
#     end
#     print empty
# end
# middle_way([1,2,3], [2,3,4,5]) + "\n"

# # given a list of integers return true if the array contains a 2 next to a 2 or a 4 next to a 4, but not both
# def either_2_4(nums)
#     count2s = 0
#     count4s = 0
#     (nums.size - 1).times do |i|
#         slice = nums[i..(i+1)]
#         if slice == [2,2]
#             count2s += 1
#         end
#         if slice == [4,4]
#             count4s +=1
#         end
#     end
#     if count2s >= 1 && count4s >= 1
#         return false
#     elsif count2s >= 1
#         return true
#     elsif count4s >= 1
#         return true
#     else
#         return false
#     end
# end
# puts either_2_4([1,2,2,3,4])
# puts either_2_4([1,2,2,3,4,4])
# puts either_2_4([1,2,3,4,4])

# # consider the leftmost and rightmost appearances of some value in a list. We'll say the "span" is the number of elements between the two. a single value has a span of 1. Return the largest span found in a given list
# def max_span(list)
#     maxspan = 0
#     temp = 0
#     list.size.times do |i|
#        list.size.times do |n|
#         if list[n] == list[i]
#             temp = i - n
#             if temp > maxspan
#                 maxspan = temp - 1
#             end
#         end
#     end
#     end
#     if maxspan == 0
#         maxspan = 1
#     end
#     return maxspan
# end
# puts max_span([3,7,4,2,3,6,12,6,7]) # 6

# # a lowercase 'g' in a string is happy if there is nother 'g' immediately to its left or right. Return true if all the g's in a string are happy.
# def g_happy(string)
#     countg = 0
#     counthappyg = 0
#     string.size.times do |i|
#         if string[i] == "g"
#             countg += 1
#         end
#     end
#     (string.size - 1).times do |i|
#         slice = string[i..(i+1)]
#         if slice == "gg"
#             counthappyg += 1
#         end
#     end
#     if countg / 2 == counthappyg
#         return true
#     elsif countg / 2 > counthappyg
#         return false
#     else
#         return false
#     end
# end
# puts g_happy("ggooooogglyyyeyeye") # true
# puts g_happy("googggggggggly") # false

# given two integer lists sorted in increasing order, return a single combined list, still in order
def merge(list1, list2)
    merged = []
    together = list1 + list2
    together.size.times do |i|
        list1.size.times do |i|
            if list1[i] < list2[i]
                merged.push(list1[i])
                next
            end
        end
        list2.size.times do |i|
            if list2[i] < list1[i]
                merged.push(list2[i])
                next
            end
        end
    end
    print merged
end
merge([1,2,5,7], [1,6,2,5])