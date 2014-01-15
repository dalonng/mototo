#! /usr/bin/env ruby -w

values = []
(2..1000).to_a.repeated_permutation(2){ |p|
    v = p.first ** p.last
    values.push(v)
}
values.uniq!
p values.count
#p values
