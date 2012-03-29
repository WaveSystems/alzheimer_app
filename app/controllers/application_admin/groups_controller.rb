class ApplicationAdmin::GroupsController < ApplicationController
  
  def dashboard
    @group = Group.find(params[:id])
    @users = User.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params[:group].merge(:organization_id => params[:organization_id]))
    if @group.save
      flash[:notice]="Se ha creado el grupo exitosamente"
      redirect_to dashboard_application_admin_organization_path(params[:organization_id])
    else
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      flash[:notice]="Se han actualizado exitosamente los cambios"
      redirect_to dashboard_application_admin_organization_group_path(params[:organization_id], params[:id])
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to edit_application_admin_organization_group_path(params[:organization_id], params[:id])
    end
  end

  def destroy
    @group = Group.find(params[:group_id])
    if @group.destroy
      flash[:notice]="Se ha eliminado la organizacion exitosamente"
      redirect_to dashboard_application_admin_organization_path(params[:organization_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to :dashboard_application_admin_organizations
    end
  end
end
