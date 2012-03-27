Alzheimer::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :user, :path_names => { :sign_up => "register" } 
  root :to => 'page#index'
  get '/dashboard' => 'page#dashboard', :as => :dashboard
  get '/profile' => 'profiles#new', :as => :new_profile
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit', :as => :edit_profile
  post ':id/update_profile' => 'profiles#update'

  namespace :organizations do
    get '/dashboard' => 'page#dashboard'
    get '/new' => 'organizations#new'
    post '/create' => 'organizations#create'
    get '/:id/edit' => 'organizations#edit'
    post '/:id/update' => 'organizations#update'
  end
end
