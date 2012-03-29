class ApplicationAdmin::UsersController < ApplicationController
  before_filter :authenticate_application_admin_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].merge(:group_id => params[:group_id]))
    if @user.save
      flash[:notice]="El usuario se ha creado exitosamente"
      redirect_to new_application_admin_organization_group_user_profile_path(params[:organization_id], params[:group_id], @user.id)
    else
      flash[:alert]="Ups! algo salio mal, intente nuevamente..."
      redirect_to new_application_admin_organization_group_user_path
    end
  end
end
