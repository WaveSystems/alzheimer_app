class Organizations::OrganizationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    if @organizations = Organization.user_organizations(current_user.id)
      flash[:notice]="Seleccione una organizacion para mostrar, o crea una nueva..."
    else
      flash[:alert]="Crea una organizacion"
      :organizations_new
    end
  end

  def dashboard
    if @organization = Organization.find(params[:id])
      @groups = Group.organization_groups(params[:id])
    else
      flash[:alert]="Organizacion no valida!"
      redirect_to organizations_index_path
    end
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
    if @organization.update_attributes(params[:organization])
      flash[:notice]="Se han actualizado exitosamente los cambios"
      redirect_to organizations_path(params[:id])
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to organizations_edit_path(params[:id])
    end
  end

  def delete
    if Organization.find(params[:id]).delete
      flash[:notice]="Se ha eliminado la organizacion exitosamente"
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to organizations_dashboard_path(params[:id])
    end
  end
end
