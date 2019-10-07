#diff21
def diff21(number)
    if number > 21
        answerg = (number-21)*2
    end
    if number < 21
        answerl = (number-21).abs
    end
    return answerg, answerl
end
puts diff21(28)
puts diff21(14)

#makes10
def makes10(one,two)
    if one + two == 10
        true
    else
        false
    end
    if one == 10
        true
    else
        false
    end
    if two == 10
        true
    else
        false
    end
    return true
end
puts makes10(9,10)
puts makes10(2,8)

#make_abba
def make_abba(a,b)
    answer = a+b+b+a
    return answer
end
puts make_abba("hey","you")

#cupcake_party
def cupcake_party(cupcake,weekend)
    if cupcake >= 40
        puts "Success!"
    end
    if cupcake <= 60
        puts "Success!"
    end
    if weekend >= 6
        puts "Infinite cupcakes!"
    end
    return cupcake, weekend
end
puts cupcake_party(56,6)

#zodiac
puts "What year were you born?"
def zodiac(year)
    if year % 12 == 4
        puts "You are a Rat."
    elsif year % 12 == 5
        puts "You are an Ox."
    elsif year % 12 == 6
        puts "You are a Tiger."
    elsif year % 12 == 7
        puts "You are a Rabbit."
    elsif year % 12 == 8
        puts "You are a Dragon."
    elsif year % 12 == 9
        puts "You are a Snake."
    elsif year % 12 == 10
        puts "You are a Horse."
    elsif year % 12 == 11
        puts "You are a Sheep."
    elsif year % 12 == 0
        puts "You are a Monkey."
    elsif year % 12 == 1
        puts "You are a Rooster."
    elsif year % 12 == 2
        puts "You are a Dog."
    elsif year % 12 == 3
        puts "You are a Pig."
    end
    return year
end
$stdout.flush
puts zodiac(gets.chomp.to_i)
puts zodiac(1967)

#trap
def trap(bone,btwo,height)
    area = ((bone.to_f+btwo.to_f)/2.0)*height.to_f
    return area
end
puts trap(13,15.0,20.0)
puts trap(14.0,17.0,22.0)

#distance
def distance(coordx1,coordy1,coordx2,coordy2)
    dist = Math.sqrt((coordx2-coordx1)*(coordx2-coordx1) + (coordy2-coordy1)*(coordy2-coordy1))
    return dist
end
puts distance(1,1,0,0)

# #trap_points
# def trap_points(c1,c2,c3,c4,c5,c6,c7,c8)
#     traparea = Math.sqrt((c1-c3)*(c1-c3) + (c2-c4)*(c2-c4)) + Math.sqrt((c5-c7)*(c5-c7) + (c6-c8)*(c6-c8))
# end

# time_dilation
def time_dilation(t0,v,c)
    dilation = t0 / Math.sqrt(1-((v/c)*(v/c)))
    return dilation
end
puts time_dilation(60.0,0.8,1.0)
