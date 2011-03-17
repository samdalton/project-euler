require 'helpers'
# E6 o
puts ( (1..100).reduce(:+) * (1..100).reduce(:+) ) - (1..100).reduce { |sum, n| sum + (n*n) } 