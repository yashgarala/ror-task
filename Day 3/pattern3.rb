=begin
     1 
    2 2 
   3 3 3 
  4 4 4 4 
 5 5 5 5 5 
6 6 6 6 6 6

using while  and times  
=end
i=5
leavel=1
while(i>=0)
    i.times{print(" ")}
    leavel.times{print(leavel," ")} # Use of Times 
    print("\n")
    leavel+=1
    i-=1
end
