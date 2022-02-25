=begin Covered Topic 
Today we have covered:
- Intro to metaprogramming and usage and examples of the below:
- Send method done
- method_missing done
- define_method done 
- class_eval 
- instance_eval
- singleton method/class

- please research on the internet and create an example of each topic( excercise should be uniq to all interns) of the meta programming and find out where it is used  in Ruby on Rails framework.
- push it to github.
=end

# Note
=begin
    What is Metaprogramming?
    - code genrate code other word It can be used to write programs that write code 
      dynamically at run time


=end

# genrate geter and seter method
class Demo
    attr_accessor :name,:maths,:science,:english # this creat geter and setter method 
    

    def initialize(name,maths,science,english)
          @name=name
            @maths=maths
            @science=science
            @english=english
    end
    
    def somthing
        puts "somthing calleed"
    end
end
d=Demo.new("somthing 12",23,22,24)
d.name="123"
p d.name
