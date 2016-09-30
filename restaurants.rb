class Restaurants
  attr_reader :restaurants

  def initialize(args={})
    @restaurants = args.fetch(:rest)
  end


  def local_restaurants(zipcode)
    restaurants.map {|rest| [rest.dba + "\n" + rest.address + "\n\n"] if rest.zipcode == zipcode}.compact.uniq
  end

end
