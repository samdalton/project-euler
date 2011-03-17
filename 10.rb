require 'helpers'
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

def sieve(limit, p = 2, list = nil)
    list ||= (p..limit).to_a
    list = list.select { |i| (i % p != 0) or (i == p) }
    p = list.find { |i| i > p }
    return (p**2 > limit) ? list : sieve(limit, p, list) 
end

p 2000000.sieve.inject { |sum, i| sum + i}
