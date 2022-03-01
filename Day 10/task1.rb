class CustomError <StandardError
    def initialize(msg="")
       super
       
   end
end
class Formula
    def method_missing(m,*args,&blcok)
        puts "#{m.to_s} Method is does not exist "
    end
end

def get_all_variable(formula_value,f)
    arr= formula_value.split(/['+''-''*''\/']/)
    temp=f.methods-Object.methods
    arr.each do |single|
        if(temp.include?(single.to_sym)==false)
            p single.to_sym
            get_variable(f,single)
        end    
    end
    

end
def get_formula(curent_class)
    puts "Enter Formula Variable name"
    formula_name=gets.chomp
    
    puts "Enter Formula Vlaue"
    formula_value=gets.chomp
    get_all_variable(formula_value,curent_class)
    
    Formula.class_eval do
  
        define_method formula_name.to_s do 
            
            return eval(formula_value)
        end
    end
    
    # p curent_class.methods
    p "ans=> ",curent_class.send(formula_name)

end
def get_variable(curent_class,variable_name_pass="")
    if(variable_name_pass=="")
        puts "Enter Variable name"
        variable_name=gets.chomp
    else 
        variable_name=variable_name_pass
    end

    puts "Enter Variable Vlaue"
    begin
        variable_value=gets.chomp
        if(variable_value.match(/^(\d)+$/)==false)
            raise CustomError.new("invalid number enter!\n Enter again")
        else 
            variable_value=variable_value.to_i
        end 
    rescue CustomError=> exception
        puts exception.message
        retry
    end
    
    Formula.class_eval do
        attr_accessor variable_name.to_s
    end

    curent_class.send variable_name.to_s+"=", variable_value
    # use of "send"
    # call setter method
end

puts "Enter diffrent variable and its value"
f=Formula.new

total_method = f.methods - Object.new.methods 
# p f.respond_to?("method_missing".to_sym)
total_method.pop
# total_method

while true
    if(total_method.empty?)
        total_method = f.methods - Object.new.methods 
        get_variable(f)
    else
        puts "If you want to add variable enter 1"
        puts "If you want to add formula enter 2"
        choice = gets.chomp() 
        case choice
        when "1"
            get_variable(f)
        when "2"
            get_formula(f)
        else 
            puts "invalid input"
        end
    end
end