# 4. convert multi dim array in single dimension but without using a flatten method

$single_dim=[]
def convert_to_single(arr)
    
    for x in arr
        if(x.class==[].class)
            convert_to_single(x)    
        else
            # p x
            $single_dim.push(x)
        end
    end
end

multi_dim=[1,2,3,[1,2,3,[5,[6]]],10]
convert_to_single(multi_dim)
print(multi_dim," => ")
print($single_dim,"\n")
