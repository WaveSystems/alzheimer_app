class ApplicationAdminController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_application_admin_user!
  layout 'admin'
end
