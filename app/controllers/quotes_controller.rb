class QuotesController < ApplicationController
	def index
		@quote = BrainScraper.scrape
		
	end
end
