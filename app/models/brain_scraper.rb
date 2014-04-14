#app/models/scraper.rb
class BrainScraper
	def self.scrape
	response = HTTParty.get('http://www.brainyquote.com/quotes/authors/c/confucius.html')

	# Get a Nokogiri::HTML::Document for the page we’re interested in...

	doc = Nokogiri::HTML(response.body)

	# Do funky things with it using Nokogiri::XML::Node methods...

	####
	# Search for nodes by css
	quotes = []
	doc.css('.bqQuoteLink a').each do |quote|
	quotes << quote.inner_html
	end

	quotes.sample
	end
end
