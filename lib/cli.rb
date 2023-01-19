class CLI

    def menu
        user_input = ""    

    while user_input != "exit"
        puts "Request movies Oscar Award Winning movies by year "
        puts "2015, 2014, 2013, 2012, 2011, 2010"
        puts "Please enter a year"
        # get user input
        user_input = gets.chomp
        # exit if user input is exit
        # print movies requested by user 
        Scraper.scrape_and_print_movies(user_input)
     end
    end
    def run
        puts "Greetings"
        menu 
      end

end