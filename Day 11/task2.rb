=begin
Exercise 2

Given a number n, return true if n is palindrome.

time complexity O(n/2)
=end

def palindrome(n)
    i=0
    j=n.length-1
    while i<j
        return false if n[i]!=n[j] 
        i+=1
        j-=1

    end
    return true
end

n=12122
n_str=n.to_s;
p "#{n} -> #{palindrome(n_str)}"

n=111222111
n_str=n.to_s;
p "#{n} -> #{palindrome(n_str)}"

n=159951
n_str=n.to_s;
p "#{n} -> #{palindrome(n_str)}"

n=123456789
n_str=n.to_s;
p "#{n} -> #{palindrome(n_str)}"
