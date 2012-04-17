class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  def layout_by_resource
    if application_admin_user_signed_in?
      "admin"
    else
      "application"
    end
  end
end
