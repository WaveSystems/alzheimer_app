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

  def groups
    if current_user.group_id.nil?
      @groups = Group.all
    else
      @groups = Group.all
      flash[:notice]="Solo puedes pertenecer a un grupo..."
    end
  end

  def join_group
    @user = User.find(current_user.id)
    if @user.update_attributes(:group_id => params[:id])
      @group = Group.find(params[:id])
      flash[:notice]="El usuario se ha unido al grupo #{@group.name} exitosamente!!!"
      redirect_to :groups
    else
      flash[:alert]="Ups! Algo salio mal, intenta de nuevo..."
      redirect_to :groups
    end
  end

  private
  def check_application_admin_user!
    if application_admin_user_signed_in?
      flash[:alert]="Operacion no permitida!"
      redirect_to '/application_admin/organizations'
    end
  end
end
