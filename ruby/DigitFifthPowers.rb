#! /usr/bin/env ruby -w

sum = 0
(0..9).to_a.repeated_permutation(6).each{ |c|
    v = c.join.to_i
    sum = sum + v if v === c.inject(0){ |s, i|  s + i**5 }
}
p sum - 1
