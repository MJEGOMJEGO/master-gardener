class UpdateUserBadgesService
  def initialize(user)
    @user = user
  end

  def call
    fetch_user_elligible_badges
    save_reached_badges_on_user
  end

  private

  def fetch_user_elligible_badges
    @elligible_badges = User::Badge.all.select do |badge|
      badge.user_elligible?(@user)
    end
  end

  def save_reached_badges_on_user
    @user.badges = @elligible_badges.map {|badge| badge.id}
    @user.save
  end

end
