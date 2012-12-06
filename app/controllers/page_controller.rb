class PageController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]

  def index
    if user_signed_in?
      redirect_to :dashboard
    end
  end

  def dashboard
    if current_user.profile.nil?
      redirect_to :new_profile
      flash[:notice] = "Debe llenarse el perfil del paciente primero"
    end
  end

  def exercises
    if current_user.profile.nil?
      redirect_to :new_profile
      flash[:notice] = "Debe llenarse el perfil del paciente primero"
    end
  end

end
