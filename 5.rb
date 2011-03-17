require 'helpers'
# E5 o
puts (1..2432902008176640000).detect { |i| (1..20).all? { |n|  (i % n) == 0 } }