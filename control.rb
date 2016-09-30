class Controller
	attr_reader :view, :restaurants

	def initialize(args = {})
		@view = View
		@restaurants = Restaurants.new({rest: Parser.generate_restaurants})
    run
	end

	def run
    view.clear_screen
		view.welcome
		zip = view.get_zip
    view.clear_screen
    return view.error if zip.length != 5 || !(zip.to_i)
		local = restaurants.local_restaurants(zip)
		view.print_pretty(local)
	end
end
