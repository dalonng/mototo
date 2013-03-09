#! /usr/env ruby -w
# Copyright (c) 2013 dalonng@gmail.com
class MMath
  
  def self.sum_divisible_by(n, target)
    end_value =  target / n
    n * end_value * (end_value + 1) / 2
  end  
end