class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
  before_filter :authenticate_user!

  private

  def layout_by_resource
    if application_admin_user_signed_in?
      "admin"
    else
      "application"
    end
  end
end
