class MyThing
  
 attr_reader :name

  def initialize(name)
   @name = name
  end

  
  def say_hello(strangername)
    puts "Hello #{strangername}, my name is #{name} !"
  end


end

mt = MyThing.new("Jay")
mt.say_hello("Mario")

10.times do |n| puts n end

def some_method
  puts "Hello World" 
end

def hello_world(name = "World")
  puts "Hello" + name + "!"
  puts "Hello #{name}!"
end


hello_world("Jaylario")
hello_world

def another_method
  "anything"


end

p another_method




