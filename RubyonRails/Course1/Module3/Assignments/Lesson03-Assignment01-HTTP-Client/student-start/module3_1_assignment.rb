require 'httparty'

ENV["FOOD2FORK_KEY"] = '965394a15ca3712cbb3be41f584af68f'

class Recipe
	include HTTParty

	base_uri 'http://food2fork.com/api/'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for (keyword)
		get("/search", query: { q: keyword})["recipes"]
	end
end

puts Recipe.for("chocolate")