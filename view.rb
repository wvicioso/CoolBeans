require 'colorize'

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
		welcome = <<-WELCOME 
 _     _  _______  ___      _______  _______  __   __  _______   _______  _______ 
| | _ | ||       ||   |    |       ||       ||  |_|  ||       | |       ||       |
| || || ||    ___||   |    |       ||   _   ||       ||    ___| |_     _||   _   |
|       ||   |___ |   |    |       ||  | |  ||       ||   |___    |   |  |  | |  |
|       ||    ___||   |___ |      _||  |_|  ||       ||    ___|   |   |  |  |_|  |
|   _   ||   |___ |       ||     |_ |       || ||_|| ||   |___    |   |  |       |
|__| |__||_______||_______||_______||_______||_|   |_||_______|   |___|  |_______|

 _______  _______  _______  ___       _______  _______  _______  __    _  _______ 
|       ||       ||       ||   |     |  _    ||       ||   _   ||  |  | ||       |
|       ||   _   ||   _   ||   |     | |_|   ||    ___||  |_|  ||   |_| ||____   |
|       ||  | |  ||  | |  ||   |     |       ||   |___ |       ||       | ____|  |
|      _||  |_|  ||  |_|  ||   |___  |  _   | |    ___||       ||  _    || ______|
|     |_ |       ||       ||       | | |_|   ||   |___ |   _   || | |   || |_____ 
|_______||_______||_______||_______| |_______||_______||__| |__||_|  |__||_______|

WELCOME

  3.times do 
    puts welcome.red
    puts "What's your zip?"
    sleep(0.3)
    clear_screen
    puts welcome.white
    puts "What's your zip?"
    sleep(0.3)
    clear_screen
    puts welcome.green
    puts "What's your zip?"
    sleep(0.3)
    clear_screen
  end
    puts welcome.green
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
