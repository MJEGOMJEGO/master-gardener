class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :find_user
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :weather, if: :user_signed_in?

  def default_url_options
    { host: ENV["Garden-Master"] || "localhost:3000" }
  end

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:city_location, :username])
  end

  def find_user
    @user = current_user
  end

  def weather
    lat = @user.latitude
    lg = @user.longitude
    url = "https://api.darksky.net/forecast/221bd696c0c1e5ae6e52609af6f0ba74/#{lat},#{lg}"
    user_condiotions = open(url).read
    conditions =  JSON.parse(user_condiotions)
    @weather = conditions["currently"]["icon"]
    @temp = conditions["currently"]["temperature"]
  end

end
