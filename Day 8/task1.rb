=begin
Today we covered 
- Exception Handling
- Regular Expressions
Exercise
1: write a program that handle the bellow exception. and also check when it is occurred
Exception
 NoMemoryError
 ScriptError
   LoadError
   NotImplementedError
   SyntaxError
 SignalException
   Interrupt
 StandardError
   ArgumentError
   IOError
     EOFError
   IndexError
   LocalJumpError
   NameError
     NoMethodError
   RangeError
     FloatDomainError
   RegexpError
   RuntimeError
   SecurityError
   SystemCallError
   SystemStackError
   ThreadError
   TypeError
   ZeroDivisionError
 SystemExit
 fatal

2: write a program that raise the Exception
=end

def raise_exception()
    begin
        raise "Yash"
    rescue => exception
        print_err('Yash',exception)
    end
end
def NoMemoryError_def()

return  0

# begin
#     limit = 2**31 - 1
#     puts "Limit: #{limit}"
#     puts "a" * limit
# rescue NoMemoryError => e
#     puts "#{e.class}: #{e.message}"
#     puts e.backtrace.join("\n")
# end
end

def ScriptError_def()
    begin
        require "hi"
    rescue ScriptError => exception
        puts exception.message
    end
end
def  LoadError_def()
    # LoadError is a subclass descendant of 
    # the ScriptError superclass, and occurs 
    # when Ruby attempts to load a file (via 
    # require or otherwise) that simply doesn’t exist.
    begin
        require 'this/file/does/not/exist'
    
    rescue LoadError => exception
        puts exception
    end
end

def NotImplementedError_def()
    # https://airbrake.io/blog/ruby-exception-handling/notimplementederror
    begin
        raise NotImplementedError
    rescue NotImplementedError => exception
        # p "sd"
        puts exception.message
    end
end
def  SyntaxError_def()
     begin
        eval("1+1=2")
    rescue SyntaxError => exception
        # p "sd"
        puts exception.message
    end
end
def SignalException_def()
    # Raised when a signal is received.
    
    # What is HUP
    # The HUP signal is sent to a process when 
    # its controlling terminal is closed. It was originally designed 
    # to notify a serial line drop (HUP stands for "Hang Up").
    
    p Signal.list
    # p Process.pid
    p Process.pid
        
    begin
        Process.kill('HUP',Process.pid)
        
    rescue SignalException => exception
        # p Signal.list
        p Process.pid
        p "SignalException"
        puts exception.message
    end

end
def Interrupt_def()
    begin
        puts "Press ctrl-C when you get bored"
        loop {}
      rescue Interrupt => e
        puts "Note: You will typically use Signal.trap instead."
      end
end
def StandardError_def()
=begin
    All of the exceptions that you should care about inherit from StandardError. 
    These are our old friends:

    NoMethodError - raised when you try to invoke a method that doesn't exist

    TypeError - caused by things like 1 + ""

    RuntimeError - who could forget good old RuntimeError?

=end
    begin
        do_something()
      rescue StandardError => e
        puts "StandardError"
        puts e.message
      end
      
end
def  ArgumentError_def()
    # raised when you call a method with incorrect arguments. 
    begin
        Process.kill('HUP')
    rescue ArgumentError => exception
        p "ArgumentError"
        puts exception.message
    end
end
def IOError_def()
    begin
        File.open("/etc/hosts") {|f| f << "example"}
    
    rescue IOError=> exception
        
        p "IOError"
        puts exception.message
    end
    
end
def   EOFError_def()
    file=File.open("./input.txt")
    begin
        while(line =file.readline)
        end
    rescue EOFError=> exception
        p "EOFError"
        puts exception.message
    end
end
def IndexError_def()
    # arr out of bound error
    begin
        arr=[1,2,3]
        p arr.fetch(10)
    rescue  IndexError=> exception
        p "IndexError"
        puts exception.message
    end
end
# for printing a erro message 
def print_err(name,exception)
    # puts "-----------------"

    p name
    puts exception.message
    puts "-----------------"

end
def call_block
    i=1
    yield 
    p i
  end
def  LocalJumpError_def()
    # Raised when Ruby can't yield as requested.
    begin
        call_block
    rescue LocalJumpError=> exception
        print_err(LocalJumpError,exception)
    end
  
end
def  NameError_def()
    begin
        p yash
    rescue NameError=> exception
        print_err(NameError,exception)
    end
end
def NoMethodError_def()
    begin
        p yash()
    rescue NoMethodError=> exception
        print_err(NoMethodError,exception)
    end
end
def RangeError_def()
    # when a numerical value is provided to a Ruby method that falls outside the allowed range of values.
    begin
        i=1<<100
        p "a"*i
    rescue RangeError=> exception
        print_err(RangeError,exception)
    end
end
def FloatDomainError_def()
# when trying to convert special kinds of Float values to other numeric 
# classes which don’t support those particular special values.
    begin
        x= Float::INFINITY
        p=x.to_i
    rescue FloatDomainError=> exception
        print_err(FloatDomainError,exception)        
    end
end
def RegexpError_def()
    # Raised when given an invalid regexp expression.
    begin
        Regexp.new("?")
    rescue RegexpError => exception
        print_err(RegexpError,exception)
    end
end

def RuntimeError_def()
    # A generic error class raised when an invalid operation is attempted
    
    begin
        name='yash '
        name<<'garala'
        name=name.freeze
        name<<'garala'
    rescue RuntimeError => exception
        print_err(RuntimeError,exception)
    end
end
def SecurityError_def()
    # Raised when attempting a potential unsafe operation,
    #  typically when the $SAFE level is raised above 0.
    
    begin
        $SAFE = 1
        name = "Bob"
        puts "Is #{name} tainted? #{name.tainted? ? 'Yes' : 'No'}"
        puts "Tainting poor, old #{name}."
        name.taint 
        eval %{
            puts "Is #{name} tainted? #{name.tainted? ? 'Yes' : 'No'}"
        }
    rescue SecurityError => e
        print_err("s",e)
    end
    puts "---------------"
end
def SystemCallError_def()
    begin
    
        File.open("does/not/exist")
    rescue SystemCallError => exception
        print_err(SystemCallError,exception)
    end
    
end
def price
    # p "a"
        @price = price
    
end
  
def SystemStackError_def()
    # Raised in case of a stack overflow.
    begin
        price    
    rescue SystemStackError=> exception
        print_err(SystemStackError,exception)
    end
    
end
def ThreadError_def()
    # Raised when an invalid operation is attempted on a thread.
    begin
        Thread.stop
    rescue ThreadError=> exception
        print_err(ThreadError,exception)
    end
end
def TypeError_def()
    # Raised when encountering an object that is not of the expected type.
    begin
        [1, 2, 3].first("two")
    rescue TypeError=> exception
        print_err(TypeError,exception)
    end
end
def ZeroDivisionError_def()
    begin
        1/0
    rescue ZeroDivisionError=> exception
        print_err(ZeroDivisionError,exception)
    end
end
def SystemExit_def()
    begin
        exit

    rescue SystemExit=> exception
        print_err(SystemExit,exception)
    end
end
def fatal_def()
    begin
        x = ObjectSpace.each_object(Class).find { |klass| klass < Exception && klass.inspect == 'fatal' }
    rescue FatalError=> exception
        print_err(FatalError,exception)
    end
end


# function call
# NoMemoryError_def()
# ScriptError_def()

puts "-----------------"
ScriptError_def()
puts "-----------------"
LoadError_def()

puts "-----------------"
NotImplementedError_def()

puts "-----------------"
SyntaxError_def()

puts "-----------------"
 SignalException_def()
 puts "-----------------"
 Interrupt_def()
 puts "-----------------"
 
 StandardError_def()
puts "-----------------"

ArgumentError_def()
puts "-----------------"

IOError_def()
   puts "-----------------"
EOFError_def()
puts "-----------------"
IndexError_def()

puts "-----------------"
   LocalJumpError_def()
   NameError_def()
     NoMethodError_def()
   RangeError_def()
     FloatDomainError_def()
   RegexpError_def()
   RuntimeError_def()
   SecurityError_def()
   SystemCallError_def()
   SystemStackError_def()
   ThreadError_def()
   TypeError_def()
   ZeroDivisionError_def()
 SystemExit_def()
 fatal_def()
 raise_exception()