class Organizations::OrganizationsController < ApplicationController
  before_filter :authenticate_user!

  def dashboard

  end
  
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(params[:organization].merge(:user_id => current_user.id))
    if @organization.save
      flash[:notice]="Se ha creado exitosamente la organizacion..."
      redirect_to organizations_dashboard_path
    else
      flash[:alert]="Ha ocurrido un error, intente nuevamente..."
      redirect_to organizations_new_path
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end
  
  def update
    @organization = Organization.find(params[:id])
    if @organiztaion.update_attributes(params[:organization])
      flash[:notice]="Se han actualizado exitosamente los cambios"
      redirect_to organizations_dashboard
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to organizations_edit_path(params[:id])
    end
  end

  def delete
  end
end
