require 'helpers'
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a**2 + b**2 = c**2
# For example, 32 + 42 = 9 + 16 = 25 = 5**2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorean_triplet?(a, b, c)
    (a < b and b < c) and (a**2 + b**2 == c**2)
end

def sum(*vals)
    vals.reduce(:+)
end

limit = 1000
(1..limit).each do |i|
    (i+1..limit).each do |j|
        b = limit - i - j
        puts i*j*b  if pythagorean_triplet?(i, j, b) && sum(i, j, b) == limit
    end
end