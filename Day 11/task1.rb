=begin
 Exercise 1 "2 sum"

Given an array of numbers and a result, return indices of the two numbers such that they sum to the result.

Input: numbers = [2,7,11,15], result = 13
Expected output: [0,2]
Explanation: numbers[0] + numbers[2] = 13
   
=end

# Time Complexity O(nlogn)
def two_sum(number,result)

    number.sort
    number.each.with_index do |x,i|
        l=i+1
        r=number.length-1;
        target=result-x
        while(l<=r)
            mid=l+(r-l)/2
            if(number[mid]==target)
                return [i,mid]
            elsif(number[mid]<target)
                l=mid+1
            else
                r=mid-1    
            end

        end
    end

    return []
end

# Time comlexity O(n) Space O(n) 
def two_sum_hash(number,result)
    hash={}
    # hash.default(key=-1)
    n=number.length
    i=0
    while i<n
        temp=result-number[i]
    
        if(hash.key?(temp))
            return [hash[temp],i]
        else
            
            hash[number[i]]=i
        end
        i+=1
    end
    return []
end
number=[2,7,11,15]
result = 13

p two_sum_hash(number,result)

number=[3,3]
result = 6

p two_sum_hash(number,result)

number=[1,2,3,4,5]
result = 1000

p two_sum_hash(number,result)

