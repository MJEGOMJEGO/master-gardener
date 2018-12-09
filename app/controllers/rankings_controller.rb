class RankingsController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    @users = User.all
  end
end

private

def find_user
  @user = current_user
end
