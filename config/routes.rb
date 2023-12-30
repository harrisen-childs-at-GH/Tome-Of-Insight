Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/registrations' }
  unauthenticated :user do
    root to: 'sessions#login', as: :unauthenticated_root
  end

  authenticated :user do
    root to: 'campaigns#landing', as: :authenticated_root
  end

  get '/landing', to: 'campaigns#landing'
  get '/campaigns/:id', to: 'campaigns#show', as: 'campaign'
  get '/campaigns/:id/notes', to: 'notes#list', as: 'campaign_notes'
  get '/campaigns/:id/new_note', to: 'notes#new', as: 'campaign_new_note'
  devise_scope :user do
    get '/login', to: 'users/sessions#new', as: :my_new_user_session
    post '/users/sign_in', to: 'users/sessions#create', as: :my_user_session
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
