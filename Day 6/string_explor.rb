=begin
Things we covered today:
- Strings and it's methods
-  percent strings
- symbols
-  difference between strings and symbols

Assignment:
  - play with strings and use different methods on it.
-  which should we prefer strings and symbols ? and why ?
=end

double_quote = "This is Yash \n Garala"
# vs
single_quote='this is exaple of \n single quote'
# Note: The only difference between using single and double quotes is that the double quotes will interpolates the variables but single quotes can’t interpolate.
print(double_quote,"\n--------\n",single_quote)
puts ""

s="hello"
p s.sub('h','hh') # one or 'n'one replace with char 
p s.gsub('h','hh') # zero or all replace with char

h = {'foo' => 'bar', 'baz' => 'bat'}
p 'food'.sub('foo', h) #bard

h = {foo: 'bar', baz: 'bat'}
p 'food'.sub('foo', h) #d

s= String.new
p s.class

s="hello"
p "s.size #{s.size}","s.length #{s.length}","s.bytesize #{s.bytesize}"

p s.index("lla")==nil

s<<" world\n"
puts s*3
p s.capitalize
p s.center(s.size+2,'1')