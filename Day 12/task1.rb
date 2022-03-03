=begin
 Exercise 1

Write a function to find the longest common prefix string amongst an array of strings.
Input: string = ["challenge","characteristic","champion"] 
Expected output: "cha"
   
=end

def longestCommonPrefix(string)
    string.sort!{|a,b| a.length<=>b.length}
    n=string[0].length
    i=0
    while i<n
        # use select statment for searching a prefix 
    
        temp=string.select{|a| a.start_with?(string[0][0..i])}
        if(temp.length!=string.length)
            break
        end
       i+=1; 
    end

    p string[0][0...i]
            

end

string = ["challenge","challenge","challenge"]
longestCommonPrefix(string)
string = ["abcded","abssbb","champion"]
longestCommonPrefix(string)
string = ["challenge","characteristic","champion"]
longestCommonPrefix(string)