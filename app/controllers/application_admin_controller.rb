class ApplicationAdminController < ApplicationController
  before_filter :authenticate_application_admin_user!
  before_filter :redirect_to_admin_index
  skip_before_filter :authenticate_user!
  
  private
  def redirect_to_admin_index
    if application_admin_user_signed_in?
      redirect_to application_admin_organizations_path
    end
  end
end
