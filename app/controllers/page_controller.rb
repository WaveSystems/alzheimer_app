class PageController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  def index
    if user_signed_in?
      redirect_to :dashboard
    end
  end

  def dashboard
    if current_user.profile.nil?
      redirect_to :profile
      flash[:notice] = "Debe llenarse el perfil del paciente primero"
    end
  end

  def profile
    if current_user.profile.nil?
      @profile = Profile.new
    else
      flash[:alert]="Este usuario ya cuenta con un perfil, si desea editar la informacion, click en editar perfil..."
      redirect_to :dashboard
    end
  end

  def create_profile
    @profile = Profile.new(params[:profile].merge(:user_id => current_user.id))
    if @profile.save
      flash[:notice] = "El perfil se ha creado correctamente"
      redirect_to :dashboard
    else
      flash[:alert] = "Error, intente de nuevo"
      redirect_to :profile
    end
  end

  def edit_profile
    @profile = Profile.find(current_user.id)
  end

  def update_profile
    @profile = Profile.find(current_user.id)
    if @profile.update_attributes(params[:profile])
      flash[:notice]="El perfil se ha actualizado correctamente"
      redirect_to :dashboard
    else
      flash[:alert]="Error al actualizar intente de nuevo..."
      redirect_to :profile
    end
  end
end
