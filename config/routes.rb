Alzheimer::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :user, :path_names => { :sign_up => "register" } 
  root :to => 'page#index'
  get '/dashboard' => 'page#dashboard', :as => :dashboard
  get '/exercises' => 'page#exercises', :as => :exercises

  get '/profile' => 'profiles#new', :as => :new_profile
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit', :as => :edit_profile
  post ':id/update_profile' => 'profiles#update'

  namespace :organizations do
    get '/index' => 'organizations#index'
    get '/:id/dashboard' => 'organizations#dashboard'
    get '/new' => 'organizations#new'
    post '/create' => 'organizations#create'
    post '/:id/edit' => 'organizations#edit', :as => :edit
    put '/:id/update' => 'organizations#update', :as => :update
  end
  
  namespace :groups do
    get '/:id/dashboard' => 'groups#dashboard'
    get '/new' => 'groups#new'
    post '/create' => 'groups#create'
    post '/:id/edit' => 'groups#edit', :as => :edit
    put '/:id/update' => 'groups#update', :as => :update
  end
end
