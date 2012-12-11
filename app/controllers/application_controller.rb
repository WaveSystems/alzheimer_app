class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :verify_profile

  private
  def verify_profile
    unless current_user.profile.present?
      redirect_to new_profile_path
    end
  end
end
