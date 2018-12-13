require 'weather_forecast'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #before_action :find_user
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_weather, if: :user_signed_in?

  def default_url_options
    { host: ENV["Garden-Master"] || "localhost:3000" }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city_location, :username])
  end

 private

  def get_weather
    return unless user_signed_in?
    @weather = WeatherForecast.get_weather(current_user.latitude, current_user.longitude)
  end
end
