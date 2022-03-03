=begin
Exercise 3

Reverse only vowels in the given string.

Input: string =  "communication"
Expected output: "comminacituon"
=end
def reverse_vowels(string)
    vowels_arr=string.chars.select{|a| a =~/[aeiouAEIOU]/}
    vowels_arr.reverse!
    n=string.length
    i=0
    curent=0;
    while i<n
        if(string[i]=~/[aeiouAEIOU]/)
            string[i]=vowels_arr[curent]
            curent+=1
        end
        i+=1
    end
    p string
end

string = "communication"
reverse_vowels(string)

string = "bacancy technology" 
reverse_vowels(string)
