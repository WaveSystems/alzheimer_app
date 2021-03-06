Alzheimer::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  post '/calendar/new' => 'calendar#new', :as => :new_event
  post '/calendar/create' => 'calendar#create', :as => :create_event
  get '/events/:id' => 'calendar#show', :as => :show_event
  get '/calendar/list' => 'calendar#list', :as => :list_events
  get '/calendar/notify' => 'calendar#event_now'
  get '/calendar/finish/:id' => 'calendar#finish_event', :as => :finish_event

  devise_for :application_admin_users

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :user, :path_names => { :sign_up => "register" } 
  root :to => 'page#index'
  get '/dashboard' => 'page#dashboard', :as => :dashboard
  get '/question/:id' => 'questions#question'
  get '/gnosia/:id' => 'questions#gnosia'

  get '/profile' => 'profiles#new', :as => :new_profile
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit', :as => :edit_profile
  post ':id/update_profile' => 'profiles#update'

  resources :exercises, only: [:index] do
    collection do
      get :calculus
      get :gnosias
      get :language
      get :memory
      get :orientation
      get :praxias
    end
  end

  namespace :api do
    resources :exercises, only: [:index] do
      collection do
        get :calculus
        get :gnosias
        get :language
        get :memory
        get :orientation
        get :praxias
      end
    end
  end

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
