# In a lambda-created proc, the return statement returns only from the proc itself
# In a Proc.new-created proc, the return statement is a little more surprising: 
# it returns control not just from the proc, but also from the method enclosing the proc!


my_lambda=lambda{return 1}

def method_lam(my_lambda)
    my_lambda.()
    return 2
end

def method_proc()
    
    my_proc=Proc.new{ return 9}
    my_proc.call
    return 2
end

p method_lam(my_lambda)


p method_proc()
