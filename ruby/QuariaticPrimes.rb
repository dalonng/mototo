require 'prime'

# n^2+n+41
def quadratic_formula(n, a, b)
    n*n + a * n + b
end

def is_peime_quadratic_formula(a, b)
    #  puts "i: #{i}, is prime : #{Prime.prime?(result)}, result:#{result}"
    i = 0
    begin
        result = quadratic_formula(i, a, b)
       # puts "i: #{i}, is prime : #{Prime.prime?(result)}, result:#{result}"
        i = i + 1
    end while Prime.prime?(result)
    i = i - 1;
end

#is_peime_quadratic_formula(90, -79, 1601)

primes = (-1000..1000).find_all{ |i|
             Prime.prime? i
            }
puts primes.count

max_len = 0
max_prodect = 0

primes.each{ |b|
    (-1000..1000).each{ |a|
        len = is_peime_quadratic_formula(a,b)
        if len > max_len
            max_len = len
            max_prodect = a * b  
            p "a : #{a}, b : #{b}"
        end
        }
    }
p max_prodect
