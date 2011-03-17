class Integer
    def is_prime?
        return true if self == 2
        
        for n in (2..(Math.sqrt(self).to_i)) do
           return false if (self % n) == 0 
        end
        return true
    end
    
    def prime_factors
        factors = []
        for n in (2..self) do
            factors.push(n) if n.is_prime? and (self % n) == 0
        end
        factors
    end
    
    def is_palindrome?
        self.to_s == self.to_s.reverse
    end
    
    def sieve(p = 2, list = nil)
        list ||= (p..self).to_a
        list = list.select { |i| (i % p != 0) or (i == p) }
        p = list.find { |i| i > p }
        return (p**2 > self) ? list : sieve(p, list) 
    end
end