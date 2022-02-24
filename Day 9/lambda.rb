# - write an example which demonstrate use of lambda.

# What is a Lambda?
# A lambda is a way to define a block & its parameters with some special syntax.


hello=-> {puts "Hello from Yash Garala "}


# way to call lambada 
hello.call
hello.()
hello[]
hello.===

# argument passing 
find_power=->(x){x*x}
p find_power.call(10)


# Pass Lambda as a parameter

add_10=lambda{ |x| x+10}

mul_10=lambda{ |x| x*10}

def pass_lambda(lam,n)
    puts lam.call(n)
end
pass_lambda(add_10,9)
pass_lambda(mul_10,9)

