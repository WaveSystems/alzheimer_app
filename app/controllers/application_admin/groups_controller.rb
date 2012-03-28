class ApplicationAdmin::GroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def dashboard
    @group = Group.find(params[:id])
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
  end

  def update
  end

  def destroy
  end
end
