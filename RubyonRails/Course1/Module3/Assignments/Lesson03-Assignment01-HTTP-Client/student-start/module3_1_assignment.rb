require 'httparty'

$FOOD2FORK_KEY = '965394a15ca3712cbb3be41f584af68f'

class Recipe
	include HTTParty

	base_uri 'http://food2fork.com/api/search?'
	default_params key: $FOOD2FORK_KEY, q:  "search"
	format :json

	def self.for term
		get("", query: {query: term})["recipes"]
	end
end
