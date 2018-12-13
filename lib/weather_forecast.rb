require 'open-uri'
require 'json'

class WeatherForecast
  def self.get_weather(latitude, longitude)
    url = "https://api.darksky.net/forecast/#{ENV["WEATHER_API"]}/#{latitude},#{longitude}?units=si"
    user_weather = open(url).read
    weather = JSON.parse(user_weather)

    return {
      conditions:  weather["currently"]["icon"],
      temperature: weather["currently"]["temperature"]
    }
  end
end
