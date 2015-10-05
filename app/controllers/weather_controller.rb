require 'open-uri'
require 'json'
class WeatherController < ApplicationController
  def form
  end

  def results
    @weather = Weather.new(params[:city])
  end
end
