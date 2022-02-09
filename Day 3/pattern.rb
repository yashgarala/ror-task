=begin
*********
**** ****
***   ***
**     **
*       *
**     **
***   ***
**** ****
*********
using while, if else, ternary oerator 
=end

n=9
m=9
l=5
r=5
i=1
while i<=9 
    j=1
    while j<=9 
        if(j>l&&j<r)
            printf " ";
        else
            printf "*"
        end
        j+=1
    end
    l=i>=5?l+1:l-1;
    r=i>=5?r-1:r+1;
    printf "\n";
    i+=1
end