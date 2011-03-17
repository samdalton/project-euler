require 'helpers'
# E4 o
999.downto(100).each do |n|
   999.downto(100).each do |m|
       prod = n * m
       puts prod and break if prod.is_palindrome?
   end 
end