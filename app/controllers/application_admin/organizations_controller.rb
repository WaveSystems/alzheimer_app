class ApplicationAdmin::OrganizationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :validate_belongs_to_group!

  def index
    if @organizations = Organization.user_organizations(current_user.id)
      flash[:notice]="Seleccione una organizacion para mostrar, o crea una nueva..."
    else
      flash[:alert]="Crea una organizacion"
      redirect_to :new_application_admin_organizations
    end
  end

  def dashboard
    if @organization = Organization.find(params[:id])
      @groups = Group.organization_groups(params[:id])
    else
      flash[:alert]="Organizacion no valida!"
      redirect_to :application_admin_organizations
    end
  end
  
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(params[:organization].merge(:user_id => current_user.id))
    if @organization.save
      flash[:notice]="Se ha creado exitosamente la organizacion..."
      redirect_to :application_admin_organizations
    else
      flash[:alert]="Ha ocurrido un error, intente nuevamente..."
      redirect_to :new_application_admin_organizations
    end
  end

  def edit
    @organization = Organization.find(params[:organization_id])
  end
  
  def update
    @organization = Organization.find(params[:organization_id])
    if @organization.update_attributes(params[:organization])
      flash[:notice]="Se han actualizado exitosamente los cambios"
      redirect_to dashboard_application_admin_organization_path(params[:organization_id])
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to organizations_edit_path(params[:id])
    end
  end

  def delete
    @organization = Organization.find(params[:organization_id])
    if @organization.destroy
      flash[:notice]="Se ha eliminado la organizacion exitosamente"
      redirect_to :application_admin_organizations
    else
      flash[:alert]="Ups! Algo salio mal, intente de nuevo..."
      redirect_to :dashboard_application_admin_organizations
    end
  end
  
  private
  
  def validate_belongs_to_group!
    unless current_user.group == nil
      redirect_to :root
      flash[:alert]="No puedes crear organizaciones"
    end
  end
end
