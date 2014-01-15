#!/usr/bin/env ruby -w

limit = 4000000

sum =0
a =1
b=1
c=a+b
loop do
    sum = sum + c
    a = b + c
    b = c + a
    c = a + b
    break if sum > limit
end

p sum
