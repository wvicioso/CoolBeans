class Restaurants
  attr_writer :restaurants

  def initialize(args={})
    @restaurants = args.fetch(:rest)
  end


  def local_restaurant(zipcode)
    restaurants.select {|rest| [rest.name, rest.address] if rest.zipcode == zipcode}
  end

end
