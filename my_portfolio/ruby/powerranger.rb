module Character
   def punch (person)
        person.scream
        person.run
		if @strength > 5 
            @caffeine_level -= 1
			puts "#{person.name} gets somersaulted"
			end 

	end
end

class Person 
include Character 
    attr_accessor :name, :caffeine_level, :distance
	def initialize (name)
		@name = name
		@caffeine_level = 0
		@distance = 0
end

		def run 
			puts "'I'm outta here!'"
		end

		def scream
			puts "'aahhhhhhh!'"
		end

		def drink_coffee
			@caffeine_level += 1
		end
end

class Power_Ranger < Person
attr_accessor :strength, :color 
    def initialize (name,strength, color)
        super(name)
        @strength = strength
        @color = color 
        @@strength = 5000
	end
    
    
    def rest
        puts "'ahhh so relaxing..'"
    end
    
    def self.use_megazord (person)
    	puts "#{person.name} was hit with #{@@strength} strength and subsequently removed" 

	end
end

class Evil_Ninja < Person
    attr_accessor :evilness
	def initialize (name, strength, evilness)
		super(name)
        @strength = strength
		@evilness = evilness
	end
    
    
    def cause_mayhem (person)
    	person.caffeine_level = 0
        puts " 'I want to watch the world burn'"
	end
    
   
end

 def fight_scene (pr1,pr2,en1,en2,p1,p2)
    puts "#{pr1.name} punches #{en1.name}."
    puts  "#{en1.name} screams in pain:"
    puts "#{pr1.punch(en1)}"
	puts  "#{pr2.name} is drained from the walk to the fight scene.  He decides to relax instead."
	puts "#{pr2.rest}"
	puts "#{en2.name} feels like causing mayhem. He targets his rage at #{p1.name}."
	puts "#{en2.cause_mayhem(p1)}"
	puts "#{p2.name} sees what happens to #{p1.name} and gets scared!"
	puts "#{p2.scream}"
	end