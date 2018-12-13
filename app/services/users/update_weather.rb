module Users
  class UpdateWeatherConditions
    def initialize(user)
      @user = user
    end

    def call
      getweatherconditions
    end

    private

    def getweatherconditions
      url = 'https://api.darksky.net/forecast/221bd696c0c1e5ae6e52609af6f0ba74/37.8267,-122.4233'
      conditions = open(url).read
      weather_conditions = JSON.parse(conditions)
    end

  end
