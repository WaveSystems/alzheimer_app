class PageController < ApplicationController
  before_filter :check_application_admin_user!
  before_filter :authenticate_user!, :except => [:index]

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

  def load_first
    @questions = Question.all
  end

  def load_second
  end

  def load_third
  end

  private
  def check_application_admin_user!
    if application_admin_user_signed_in?
      flash[:alert]="Operacion no permitida!"
      redirect_to '/application_admin/organizations'
    end
  end
end
