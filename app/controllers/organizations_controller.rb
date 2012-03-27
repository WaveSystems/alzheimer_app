class OrganizationsController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
  end
  
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.find(params[:id])
  end

  def edit
  end
  
  def update
  end

  def delete
  end
end
