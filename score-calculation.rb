#! /usr/bin/env ruby


science=[65, 80, 67, 35, 58, 60, 72, 75, 68, 92, 36, 50, 2, 58.5, 46, 42, 78, 62, 84, 70]
puts science.size

english=[44, 87, 100, 63, 52, 60, 58, 73, 55, 86, 29, 56, 89, 23, 65, 84, 64, 27, 86, 84]
e=to_na(english)

puts english.size

puts "科学の合計値"
sum_s=0
science.each{|i| sum_s = sum_s + i}
puts science.mean

puts "英語の合計値"
sum_e=0
english.each{|i| sum_e = sum_e + i}
puts sum_e


puts "科学の平均値"
puts sum_s/science.size


puts "英語の平均値"
puts sum_e/english.size

puts 
