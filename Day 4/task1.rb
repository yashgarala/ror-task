# example of arrary method
def print_arr(arr)
    
    n=arr.size
    i=0
    while(i<n)
        print(arr[i]," ")
        i+=1
    end
    puts ""
    
end

arr=Array.new(10){ |i| i=i+1}
print_arr(arr)

# push opration
arr.push(100)
print("After push '100' -> ")
print_arr(arr)


# push opration
arr.pop()
print("After pop -> ")
print_arr(arr)


# reverse arr
arr=arr.reverse()
print("Reverse Array -> ")
print_arr(arr)

# delete at
arr.delete_at(1)
print("element at index 1 is deleted ->")
print_arr(arr)

# select

temp=arr.select{|j| j%2==0}
print("all even number in array ->")
print_arr(temp)

# concat element 
temp.concat(arr)
print("temp and arr are concate to temp ->")
print_arr(temp)

# arrary soring 
arr.sort!
print("Arrary sorting ->")
print_arr(arr)


