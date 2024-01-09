Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  unauthenticated :user do
    root to: 'sessions#login', as: :unauthenticated_root
  end

  authenticated :user do
    root to: 'campaigns#landing', as: :authenticated_root
  end

  get '/landing', to: 'campaigns#landing'
  get '/campaign/:id', to: 'campaigns#show', as: 'campaign'
  get '/campaign/:id/notes', to: 'notes#list', as: 'campaign_notes'
  get '/campaign/:id/new_note', to: 'notes#new', as: 'campaign_new_note'
  post '/campaign/:id/notes', to: 'notes#create', as: 'campaign_note_create'
  get '/campaign/:id/generate', to: 'campaigns#generate', as: 'campaign_generation'
  devise_scope :user do
    get '/login', to: 'users/sessions#new', as: :my_new_user_session
    get '/users/sign_in', to: 'users/sessions#create', as: :my_user_session
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
