#! /usr/env ruby -w
# -*- coding:utf-8 -*-

require 'File'

start_time = Time.now

numbers = ""

File.open("../data/data11"){ |f|
  numbers = f.read
}

puts numbers