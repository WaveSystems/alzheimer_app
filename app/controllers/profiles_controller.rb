class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def new
    if current_user.profile.nil?
      @profile = Profile.new
    else
      flash[:alert]="Este usuario ya cuenta con un perfil, si desea editar la informacion, click en editar perfil..."
      redirect_to :dashboard
    end
  end

  def create
    @profile = Profile.new(params[:profile].merge(:user_id => current_user.id))
    if @profile.save
      flash[:notice] = "El perfil se ha creado correctamente"
      redirect_to :dashboard
    else
      flash[:alert] = "Error, intente de nuevo"
      redirect_to :new_profile
    end
  end

  def edit
    begin
      @profile = Profile.find(current_user.id)
    rescue Exception => e
      flash[:alert] = "Este usuario aun no tiene perfil para editar"
      redirect_to :new_profile
    end
  end

  def update
    @profile = Profile.find(current_user.id)
    if @profile.update_attributes(params[:profile])
      flash[:notice]="El perfil se ha actualizado correctamente"
      redirect_to :dashboard
    else
      flash[:alert]="Error al actualizar intente de nuevo..."
      redirect_to :new_profile
    end
  end
end
