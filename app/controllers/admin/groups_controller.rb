class Groups::GroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def dashboard
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
