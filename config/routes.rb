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

  namespace :admin do
    resources :organizations do
      get '/dashboard' => 'organizations#dashboard', :on => :member
      resources :groups, :except => [:index] do
        get '/dashboard' => 'groups#dashboard', :on => :member
      end
    end
  end
end
