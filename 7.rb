require 'helpers'
# E7 o
def sieve(p, limit, list = nil)
    list ||= (p..limit).to_a
    list = list.select { |i| (i % p != 0) or (i == p) }
    p = list.find { |i| i > p }
    return (p**2 > limit) ? list : sieve(p, limit, list) 
end

list = sieve 2, 106000
list = list[0,10001]
p list.last

