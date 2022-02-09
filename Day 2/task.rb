

#----------------Module ----------
#1 You cannot inherit modules or you can’t create a subclass of a module.
#2 Objects cannot be created from a module.
#3 Modules are used as namespaces and as mixins.
#4 All the classes are modules, but all the modules are not classes.
#5 The class can use namespaces, but they cannot use mixins like modules.
#6 The name of a module must start with a capital letter.
module Gfg
      
    C = 10;
    
    # Prefix with name of Module
    # module method 
    def portal
        puts "Welcome to GFG Portal!"
    end
        
    # Prefix with the name of Module
    # module method
    def tutorial  
        puts "Ruby Tutorial!"
    end
        
    # Prefix with the name of Module
    # module method
    def topic  
        puts "Topic - Module"
    end
      
end
Gfg.portal




# --------Class and instance method----------- 
class Book 
    # class method
    def self.new_book
        "New Book "
    end
    # instace method 
    def old_book
        "old Book "
    end
end
i=Book.new
<<-DOC
puts(i.new_book)
puts(Book.old_book)
# it throw an error 
DOC
# this is right way
puts(i.old_book)
puts(Book.new_book)
