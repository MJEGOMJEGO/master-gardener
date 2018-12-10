class ProfilesController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :update_user_badges


  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to edit_profile_path
  end

  private

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :city_location, :img, :img_cache)
  end

  def update_user_badges
    UpdateUserBadgesService.new(current_user).call
  end
end

