#! /usr/env ruby -w
# -*- coding:utf-8 -*-


  
#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# =>                  a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

333.downto(1){ |a|
  666.downto(1){ |b|
    c = 1000 - a - b
    if (c*c == a*a + b*b)
      puts a,b,c,a*b*c
    end
  }
}
