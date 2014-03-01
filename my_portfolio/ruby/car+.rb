class Car 
@@total_car_count = 0
@@cars_per_color = Hash.new(0)
attr_accessor :convertible, :roof_status
def initialize (color, convertible)
	@fuel = 10
	@distance = 0
	@@total_car_count += 1
	@@cars_per_color["#{color}"] += 1
	@convertible = convertible
end

#class method that returns number of cars created
def self.total_car_count
	@@total_car_count
end

def change_color (color,new_color)
@@cars_per_color["#{color}"] -= 1
@@cars_per_color["#{new_color}"] +=1
puts "Your car has been changed to: #{new_color}!"
end 

def self.cars_per_color
	@@cars_per_color
end

 def self.most_popular_color
    newhash = @@cars_per_color.sort_by{|x,y| y}.reverse
    newhash.first[0]
    end

 def top_down
    if @convertible == true
        @roof_status = "open"
        end
end

def close_top
    if @convertible == true
        @roof_status = "close"
        end
end

def get_info 
	 "I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons left."
end

def drive (miles)
	@distance = miles
	if @fuel.to_f >= (miles.to_f/20.to_f)
	@fuel -= (miles.to_f/20.to_f) 
else
	puts "Not enough fuel!!"
end
end 

def fuel_up
	gas = 3.50
	gas_needed = 10 - @fuel.to_f
	gas_price = gas_needed * gas
	puts "Gas will cost #{gas_price} to fill up!"
end

end

class ConvertibleCar < Car
attr_accessor :roof_status
def initialize (color)
    @fuel = 10
    @distance = 0
	@@total_car_count += 1
	@@cars_per_color["#{color}"] += 1
    @roof_status = ""
end


def top_down
        @roof_status = "opened"
        
end

def close_top
        @roof_status = "closed"
        
end
end