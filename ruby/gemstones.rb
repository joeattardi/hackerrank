# https://www.hackerrank.com/challenges/gem-stones
require 'set'

num_rocks = gets.chomp.to_i
rocks = []

num_rocks.times { rocks << Set.new(gets.chomp.chars) }

intersection = rocks[0]
rocks.each do |rock|
  intersection = intersection & rock
end

puts intersection.length

