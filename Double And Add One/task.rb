def getprime(number,prime)
    for i in (2..number)
        temp=i+i;
        next if(!prime[i]) 
        
        
        while(temp<number)
            prime[temp]=false
            temp+=i;
        end
    end
end
def count_prime_condition(prime,p,i,count)
    if(count>=i)
         return true
    end
    if(p>=prime.size()) 
        return false;
    end

    if(prime[p])
        return count_prime_condition(prime,2*p+1,i,count+1)
    end
    return false;
end
def double_and_add_one(n,i)
    prime=Array.new(100001,true)
    getprime(100001,prime)

    ans=[]

    for j in (2..n)

        if(prime[j])
            
            if(count_prime_condition(prime,2*j+1,i,0))
                ans<<j
            end 
        end
    end
    p ans
end
n=gets.chomp.to_i
i=gets.chomp.to_i
double_and_add_one(n,i)