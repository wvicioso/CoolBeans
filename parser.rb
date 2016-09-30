

module Parser
require_relative 'mexican_restaurant'
require 'open-uri'
require 'json'
  def self.parse_api
    base_url = "https://data.cityofnewyork.us/resource/9w7m-hzhe.json"
    grade_query = "grade="
    json_string_response = open(base_url + "?" + grade_query + 'A').read
    ruby_hash_response = JSON.parse(json_string_response)
    ruby_hash_response
    parse_api = ruby_hash_response.select {|hash| hash if hash['cuisine_description'].downcase == 'mexican' }
  end

  def self.generate_restaurants
    parse_api.map{|obj| Mexican_restaurant.new(obj) }
  end
end

# this.each {|i| p i.class}
    p Parser.generate_restaurants
