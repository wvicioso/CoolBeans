module View

	def self.get_zip
		puts "What's your zip?"
		user_input = gets.chomp
	end

	def self.print_pretty(array)
		if array.empty?
      no_rest
    else
      puts "HERE ARE THE MEXICAN SPOTS IN YOUR AREA: \n\n"
      array.each { |rest| puts rest}
    end
	end

	def self.welcome
		puts "Welcome to Cool Beans!"
	end

  def self.no_rest
    puts "Sorry, no Mexican spots around you!"
  end

  def self.error
    puts "That was not a zipcode."
  end

  def self.clear_screen
    system("clear")
  end
end
