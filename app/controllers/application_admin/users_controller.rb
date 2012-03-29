class ApplicationAdmin::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].merge(:group_id => params[:group_id]))
    if @user.save
      flash[:notice]="El usuario se ha creado exitosamente"
      redirect_to dashboard_application_admin_organization_group_path(params[:organization_id], params[:group_id])
    else
      flash[:alert]="Ups! algo salio mal, intente nuevamente..."
      redirect_to new_application_admin_organization_group_user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
