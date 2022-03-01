
a={ abc: 'hello', 'another_key' => 123, 4567 => 'third' }
p a.keys.map{|x| x.to_s}

s=""
p s.nil?

a='12345'.split(" ").map{|x| x.to_i}

p a

MR_COUNT = 0        # constant defined on main Object class
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1    # set global count to 1
  MR_COUNT = 2      # set local count to 2
end
p ::MR_COUNT
p Foo::MR_COUNT
abc =-> (){p "aa"}
p abc.class
-> (a) {p a}["Hello world"]

a=(1..10).inject([0,1]){|i| i<<i.last(2).inject(:+)}

p a
p send :class

p (1..10).each{|x| x*2}.to_a
p (1..10).map{|x| x*2}.to_a

class ABC
  xyz=0
  def xyz
    return "xyz in ABC"
    
  end
end

p ABC::new::xyz
p ABC::new.xyz
p ABC.new::xyz
# p ABC::xyz



CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
upcased = ["one", "two", "three"].map {|n| puts n.upcase }


class Klass
  attr_accessor :str
end

module Foo
  def foo; 'foo'; end
end

s1 = Klass.new #=> #
s1.extend(Foo) #=> #
p s1.foo #=> "foo"

s2 = s1.clone #=> #
p s2.foo #=> "foo"

s3 = s1.dup #=> #
s3.str="Yash"
p s3.str
s3.foo #=> NoMethodError: undefined method `foo' for 

