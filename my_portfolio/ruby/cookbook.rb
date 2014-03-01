class Cookbook 
	attr_accessor :title, :recipes
	def initialize (title)
		@title = title
		@recipes = []
	end 
	def add_recipe (rec_obj)
		@recipes << rec_obj
		puts "Added a new recipe to the #{title} cookbook: #{rec_obj.title}"
	end

	def recipe_title
		@recipes.each{|x| puts x.title}
	end

	def print_cookbook
		count = 1
		@recipes.each{|x| puts "#{x.title} ingredients: #{x.ingredients.join(", ")} || Steps: #{x.steps}"}
	end
end

class Recipe 
	attr_accessor :title, :ingredients, :steps
	def initialize (title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "#{@title} ingredients: #{@ingredients.join(", ")}"
		 puts "Follow these steps:"
         @steps.each{ |x| puts "#{count}. #{x}" 
         count+=1 }
	end
end