class Mexican_restaurant
  attr_reader :name, :address, :zipcode

  def initialize(args={})
    @dba = args.fetch("dba")
    @street = args.fetch("street")
    @building = args.fetch("building")
    @boro = args.fetch("boro")
    @phone = args.fetch("phone")
    @zipcode = args.fetch("zipcode")
  end


  def address
    "#{building} #{street}, #{boro}, NY, #{zipcode}"
  end
end
