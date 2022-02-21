=begin
    Today we covered
    - functions
    - variable and its scope

    Exercise
    - write example of each type of argument passing
    - write example that demonstrate type of variable
=end
class Thing
    def square(n)
        return n*n
    end
    def multiply(n,n1=2)
        return n*n1
    end
    def multiply_mul(n,*n1)
        n1.each{|i| n=n*i}
        return n
    end
    def parameter_with_name(n1:1,n2:2)
        
        return n1*n2
    end

end

thing=Thing.new
p thing.square(5)
p thing.multiply(8)
p thing.multiply(8,10)
p thing.multiply_mul(1,2,3,4)
p thing.parameter_with_name(n1:10 )
