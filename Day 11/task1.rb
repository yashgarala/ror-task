=begin
 Exercise 1 "2 sum"

Given an array of numbers and a result, return indices of the two numbers such that they sum to the result.

Input: numbers = [2,7,11,15], result = 13
Expected output: [0,2]
Explanation: numbers[0] + numbers[2] = 13
   
=end

number=[2,7,11,15]
result = 13
ans=[]
number.each.with_index do |x,i|
    index_of_diff=number.find_index(result-x);
    
    unless (index_of_diff.nil?)
        ans<<i<<index_of_diff;
        break
    end
    
end

p ans