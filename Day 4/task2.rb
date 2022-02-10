# 2. example of each hash method


# create hash using string
grades={"Yash Garala"=>100,"Jane Doe"=> 10, "Jim Doe"=> 6,"Abc Def"=> -500}
print(grades)
puts("\n")

# create hash using symbole
book={}
book[:a]=1
book[:b]=2
book[:c]=3
book[:d]=4
print(book)
puts("\n")

# store in hash
grades.store(:e,42)
puts grades

print("invert hash =>")
puts grades.invert

# delete
x=grades.delete("Abc Def")
print(x)
puts("\n")

x=grades.delete("aa"){ |el| "#{el} not found" }
print(x)
puts("\n")
grades["aaaa"]=-1;
grades["bb"]=-1;
grades["asdasd"]=-1;

x=grades.delete_if{|key, value| value > 0 }
print(x)
puts("\n")
