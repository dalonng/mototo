#! /usr/env ruby -w
# -*- coding:utf-8 -*-

#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum #is 3025  385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

r =  (1..100).inject([0,0]){|result, element| [result[0]+element, result[1] + element**2] }
p r[0]**2-r[1]