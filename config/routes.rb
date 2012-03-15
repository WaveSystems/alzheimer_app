Alzheimer::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users
  root :to => 'page#index'
  match '/dashboard' => 'page#dashboard', :as => :dashboard
end
