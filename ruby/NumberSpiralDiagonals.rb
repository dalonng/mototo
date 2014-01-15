#!/usr/bin/env ruby -w

# rt = n^2, n = 2a + 1 a ＝ N
# lt = n^2 - n +1
# lb = n^2 - (2n-2) = (n-1)^2+1
# rb = n^2 - 2n + 2 - n + 1

def rt_value(n)
    n*n
end

def lt_value(n)
    n*n - n + 1
end

def lb_value(n)
    (n-1)*(n-1) +1
end

def rb_value(n)
    n*n - 3*n + 3
end

def sum_value(n)
    4*n*n - 6*n + 6
end

sum = 1
(1..500).each{ |i|
    n = 2*i + 1
    sum = sum + 4*n*n - 6*n + 6
    sum = sum + sum_value(n)
}

puts sum
