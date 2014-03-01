class Car 


def initialize 
	@fuel = 10
	@distance = 0
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