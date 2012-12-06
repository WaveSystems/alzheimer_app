class ApplicationAdminController < ActionController::Base
  layout 'admin'
  before_filter :authenticate_application_admin_user!
end
