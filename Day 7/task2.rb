=begin
    Today we covered
    - functions
    - variable and its scope

    Exercise
    - write example of each type of argument passing
    - write example that demonstrate type of variable
=end
$example_of_global=1;
class Thing
    @@no_of_state=0
    def initialize
        $example_of_global+=10
    
    end

    def square(n)
        @@no_of_state+=1;
        @number=n;
        return n*n
    end
    def which_number()
        puts "Number is #{@number}"
    end
    def no_of_time()
        puts "Number of time call #{@@no_of_state}"
    end
    
    
end

one=Thing.new
x=one.square(9)
p "ans:- #{x}"
one.which_number()
one.no_of_time()

p $example_of_global
two=Thing.new
x=two.square(9)
p "ans:- #{x}"
two.which_number()
two.no_of_time()

p $example_of_global

three=Thing.new

x=one.square(9)

p "ans:- #{x}"
three.which_number()
three.no_of_time()
p $example_of_global