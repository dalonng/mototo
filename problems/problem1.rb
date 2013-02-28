#! /usr/env ruby -w
require '../modules/mmath'

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

  
arg = ARGV[0]

target = if arg == nil then 1000 else arg.to_i end

sumof3    = MMath.sum_divisible_by(3,target)
sumof5    = MMath.sum_divisible_by(5,target)
sumof3x5  = MMath.sum_divisible_by(15,target)
  
puts sumof3 + sumof5 - sumof3x5  