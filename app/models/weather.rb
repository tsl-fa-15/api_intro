require 'open-uri'
require 'json'
class Weather
  attr_accessor :city, :parsed_result

  def initialize(city)
    @city = URI.encode(city)
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}"
    result = open(url).read
    @parsed_result = JSON.parse(result)
  end

  def description
    return parsed_result['weather'][0]['description']
  end

  def icon_url
    icon_code = parsed_result['weather'][0]['icon']
    return "http://openweathermap.org/img/w/#{icon_code}.png"
  end
end
