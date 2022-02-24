# - write an example which demonstrate use of blocks.

=begin
#   You have seen how Ruby defines methods where
    you can put number of statements and then you call that method.
    Similarly, Ruby has a concept of Block.

#   block define as a:- { }
=end

def example
    puts   "inside example"
    yield
    puts   "123344"
    yield
    puts "\n"
    
end
example { puts "yield block"}

def isPrime(n)
    i=2
    while(i*i<n)
        if n%i==0
            yield n,"NOT a"
            return
        end
        i+=1
    end
    yield n,""
end
isPrime(22) {|n,s| puts "#{n} is #{s} prime"}


# using call method
def usingCall(&block)
    puts   "\n\nUsing Block  example"
    block.call
    puts   "123344"
    block.call
    puts "\n"
    
end
usingCall { puts "block call uisng block.call "}
