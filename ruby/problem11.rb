#! /usr/env ruby -w
# -*- coding:utf-8 -*-


start_time = Time.now

numbers = ""

File.open("../data/data11"){ |f|
  numbers = f.read
}

numbers = numbers.delete '\r\n'


puts numbers