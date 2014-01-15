#!/usr/bin/env ruby -w

def sum_multiples(ary, range)
	range.inject(0) do |sum, n|
        ary.any?{ |i| n % i == 0}? sum+n : sum
    end
end

puts sum_multiples([3,5],0..999)

# Sum some numbers
(5..10).reduce(:+)      

#Same using a block and inject
(5..10).inject { |sum, n| sum +n}

def sum_divisible_by(n, taget)
    p = taget / n
    return n*(p(p+1))/2
end

target  = 10000000

puts sum_divisible_by(3,target) + sum_divisible_by(5, target) - sum_divisible_by(15, target)
