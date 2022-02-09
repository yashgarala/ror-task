=begin
   
 * * 
 ** ** 
 *** *** 
 **** **** 
 ***** ***** 
 ****** ****** 
 ******* ******* 
 ******** ******** 
 using while and (condition)if()
 
=end
row=1
col=1
leavel=10
while col<leavel
    row=1
    last=((2*col+1));
    while(row<=last)
        print("*") if (row-1)%col!=0
        # print("*") if row!=col
        print(" ") if (row-1)%col==0
        
        row+=1
    end
    print("\n")
    col+=1
end