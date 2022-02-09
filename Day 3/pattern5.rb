=begin
***********
**       **
* *     * *
*  *   *  *
*   * *   *
*    *    *
*   * *   *
*  *   *  *
* *     * *
**       **
***********
using while ,case when
=end
n=11
i=1
while(i<=n) 
    j=1
    while(j<=n)
        case (i==j||i==1||j==1||i==n||j==n||j==n-i+1)
        when true
            print("*")
        when 
            print(" ")
            
        end
        j+=1;
    end
    puts ""
    i+=1
end