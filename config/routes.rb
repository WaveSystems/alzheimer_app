Alzheimer::Application.routes.draw do
  devise_for :application_admin_users

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :user, :path_names => { :sign_up => "register" } 
  root :to => 'page#index'
  get '/dashboard' => 'page#dashboard', :as => :dashboard
  get '/exercises' => 'page#exercises', :as => :exercises
  post '/load_first' => 'page#load_first'
  post '/load_second' => 'page#load_second'
  post '/load_third' => 'page#load_third'

  get '/question/:id' => 'questions#question'

  get '/profile' => 'profiles#new', :as => :new_profile
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit', :as => :edit_profile
  post ':id/update_profile' => 'profiles#update'

  namespace :application_admin do
    resources :organizations, :only => :index do
      get '/dashboard' => 'organizations#dashboard', :on => :member
      get '/new' => 'organizations#new', :as => :new, :on => :collection
      post '/create' => 'organizations#create', :as => :create, :on => :collection
      get '/edit' => 'organizations#edit', :as => :edit
      put '/update' => 'organizations#update', :as => :update
      delete '/delete' => 'organizations#delete', :as => :delete

      resources :groups, :except => [:index, :destroy] do
        get '/dashboard' => 'groups#dashboard', :on => :member
        delete '/destroy' => 'groups#destroy', :as => :destroy

        resources :users, :except => [:index, :destroy] do
          delete '/destroy' => 'users#destroy', :as => :destroy
          resources :profiles, :only => [:new, :create]
        end
      end
    end
  end
end
