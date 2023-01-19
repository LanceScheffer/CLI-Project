require "nokogiri"
require "open-uri"
# Parse payload to hash
require "json"

class Scraper
    URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year="

    def self.scrape_and_print_movies(year)
        puts "Fetching movies..."
        doc = Nokogiri::HTML(URI.open("#{URL}#{year}"))
        scraped_movies = JSON.parse(doc.text)
        scraped_movies.each do |movie|
            puts "| #{movie["title"]} | #{movie["year"]} | #{movie["nominations"]} | #{movie["best_picture"]}"
          end

    end

end