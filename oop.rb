# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name
    def initialize(name, color="silver")
      @name = name
      @color = color
    end

    def say(str)
        "*~*#{str}*~*"
    end
end

pokey = Unicorn.new("Pokey")


# Code to show it works
p pokey.say("Hello i'm #{pokey.name}")
puts

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :thirsty
    def initialize(name, pet="bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

bitey = Vampire.new("Bitey")


# Code to show it works
puts "thirsty: #{bitey.thirsty}"
bitey.drink
puts "drank"
puts "thirsty: #{bitey.thirsty}"
puts

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :is_hungry
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @eaten = 0
    end

    def eat
        @eaten = @eaten + 1
        if @eaten >= 4
            @is_hungry = false
        end
    end
end

spicy = Dragon.new("Spicy", "Blondie", "black")


# Code to show it works
puts "is_hungry: #{spicy.is_hungry}"
spicy.eat
puts "ate"
puts "is_hungry: #{spicy.is_hungry}"
spicy.eat
puts "ate"
puts "is_hungry: #{spicy.is_hungry}"
spicy.eat
puts "ate"
puts "is_hungry: #{spicy.is_hungry}"
spicy.eat
puts "ate"
puts "is_hungry: #{spicy.is_hungry}"
puts


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :age
    attr_reader :is_adult
    attr_reader :is_old
    attr_reader :ring
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @ring = false

        if @name == "Frodo"
            @ring = true
        end
    end

    def celebrate_birthday
        @age = @age + 1
        if @age >= 33
            @is_adult = true
        end
        if @age >= 101
            @is_old = true
        end
    end
end


# Code to show it works
bilbo = Hobbit.new("Bilbo", "Chill")
frodo = Hobbit.new("Frodo", "Not as Chill")

p "bilbo age : #{bilbo.age}"
p "bilbo is_adult : #{bilbo.is_adult}"
p "bilbo is_old : #{bilbo.is_old}"
p "bilbo ring : #{bilbo.ring}"
puts

for i in 0..32 do
    bilbo.celebrate_birthday
 end
 puts "bilbo celebrated 33 birthdays"
 puts

 p "bilbo age : #{bilbo.age}"
 p "bilbo is_adult : #{bilbo.is_adult}"
 p "bilbo is_old : #{bilbo.is_old}"
 p "bilbo ring : #{bilbo.ring}"
 puts

 for i in 0..67 do
    bilbo.celebrate_birthday
 end
 puts "bilbo celebrated 68 birthdays"
 puts

 p "bilbo age : #{bilbo.age}"
 p "bilbo is_adult : #{bilbo.is_adult}"
 p "bilbo is_old : #{bilbo.is_old}"
 p "bilbo ring : #{bilbo.ring}"
 puts

p "frodo age : #{frodo.age}"
p "frodo is_adult : #{frodo.is_adult}"
p "frodo is_old : #{frodo.is_old}"
p "frodo ring : #{frodo.ring}"