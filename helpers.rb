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
end