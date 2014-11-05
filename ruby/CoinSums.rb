#! /usr/bin/env ruby -w
# Copyright (c) 2013 dalonng@gmail.com

count = 0

(0..200).step(200).each do |i200| 
  (0..200).step(100).each do |i100| continue if i100 > 200
    (0..200).step(50).each do |i50| continue if i50 > 200
      (0..200).step(20).each do |i20| continue if i20 > 200
        (0..200).step(10).each do |i10| continue if i10 > 200
          (0..200).step(5).each do |i5| continue if i5 > 200
            (0..200).step(2).each do |i2| continue if i2 > 200
              (0..200).step(1).each { |i| 
                sum = i200 + i100 + i50 + i20 + i10 + i5 + i2 + i
                if sum == 200
                 # puts "#{i200},#{i100},#{i50},#{i20},#{i10},#{i5},#{i2},#{i}"
                  count = count + 1
                end
              }
            end
          end
        end
      end
    end
  end
end

puts "Value of local variable is #{count}"