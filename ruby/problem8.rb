#! /usr/env ruby -w
# -*- coding:utf-8 -*-

# Find the greatest product of five consecutive digits in the 1000-digit number.

big_number = ""

File.open("../data/data8"){ |f|
  big_number = f.read
}

big_number = big_number.delete("\n")
final = 0
big_number.split('0').each{ |seq|
  numbers = seq.split('')
  while numbers.count > 0
    product = numbers[0].to_i * numbers[1].to_i * numbers[2].to_i * numbers[3].to_i * numbers[4].to_i
    final = product if product > final
    numbers.shift
  end
}

p final
