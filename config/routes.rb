Alzheimer::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :user, :path_names => { :sign_up => "register" } 
  root :to => 'page#index'
  match '/dashboard' => 'page#dashboard', :as => :dashboard
  match '/profile' => 'page#profile', :as => :profile
  match '/create_profile' => 'page#create_profile', :as => :create_profile
  match '/edit_profile' => 'page#edit_profile', :as => :edit_profile
  match ':id/update_profile' => 'page#update_profile', :as => :update_profile
end
