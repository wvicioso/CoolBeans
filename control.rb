class Controller
	attr_reader :view, :restaurants
	def initialize(args = {})
		@view = View
		@restaurants = Parser.generate_restaurants
	end

	def run
		view.welcome

		zip = view.get_zip

		local = restaurants.get_local(zip)

		view.give_results(local)
	end
end