#! /usr/bin/env ruby
require 'numo/narray'
include Numo

#配列の用意
science=DFloat[64, 80, 67, 35, 58, 60, 72, 75, 68, 92, 36, 50, 2, 58.5, 46, 42, 78, 62, 84, 70]
english=DFloat[44, 87, 100, 63, 52, 60, 58, 73, 55, 86, 29, 56, 89, 23, 65, 84, 64, 27, 86, 84]

puts "[ 合計値 ]"
puts "科学 :\t#{science.sum}"
puts "英語 :\t#{english.sum}"
print "\n"

puts "[ 平均値 ]"
puts "科学 :\t#{science.mean}"
puts "英語 :\t#{english.mean}"
print "\n"

puts "[ 標準偏差 ]"
puts "科学 :\t#{science.stddev}"
puts "英語 :\t#{english.stddev}"
print "\n"

puts "[ 分散 ]"
puts "科学 :\t#{science.var}"
puts "英語 :\t#{english.var}"
print "\n"

puts "[ 降順ソート ]"
puts "科学"
p science.sort.reverse
puts "英語"
p english.sort.reverse
print "\n"

# 以下, 偏差値を求める
science=science.map{|item| 50+(item-science.mean)/2}
english=english.map{|item| 50+(item-english.mean)/2}

puts "[ 偏差値 ]"
puts "科学"
p science
puts "英語"
p english
print "\n"
