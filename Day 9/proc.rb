# - write an example which demonstrate use of Proc.

pow_proc=Proc.new{|x| x**2}

p pow_proc.call(3)
p pow_proc.(3)
p pow_proc[3]

# Proc objects are closures, meaning they remember 
# and can use the entire context in which they were created.

def get_time(factor)

    Proc.new{|n| n*factor}
    
end

times3=get_time(3)
times5=get_time(5)
p times3.(12)
p times5.(12)


proc2=proc{|x| x*x}
p proc2.(3)

add_10_proc=Proc.new{|x| x+10}
arr=[1,2,3]
arr.map!(&add_10_proc)
p arr
