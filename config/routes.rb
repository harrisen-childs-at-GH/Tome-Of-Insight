Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :campaign_users
   
  unauthenticated :user do
    root to: 'sessions#login', as: :unauthenticated_root
  end

  authenticated :user do
    root to: 'campaigns#landing', as: :authenticated_root
  end

  get '/landing', to: 'campaigns#landing'
  delete '/campaign/:id', to: 'campaigns#destroy', as: 'campaign_delete'
  get '/landing/create_campaign', to: 'campaigns#new', as: 'new_campaign'
  post '/campaign/new', to: 'campaigns#create', as: 'create_campaign'
  get '/campaign/:id', to: 'campaigns#show', as: 'campaign'
  get '/campaign/:id/notes', to: 'notes#list', as: 'campaign_notes'
  get '/campaign/:id/new_note', to: 'notes#new', as: 'campaign_new_note'
  post '/campaign/:id/notes', to: 'notes#create', as: 'campaign_note_create'
  get '/campaign/:id/generate', to: 'campaigns#generate', as: 'campaign_generation'
  get '/campaign/:id/generate_npc', to: 'generated_np_cs#new', as: 'campaign_npcs'
  # #update generations to campaign_xxx to work
  get 'campaign/:id/generate_location', to: 'generated_locations#new', as: 'campaign_locations'
  get 'campaign/:id/generate_enemy', to: 'generated_enemys#new', as: 'campaign_enemy'
  get 'campaign/:id/generate_item', to: 'generate_items#new', as: 'generate_item'
  
  devise_scope :user do
    get '/login', to: 'users/sessions#new', as: :my_new_user_session
    get '/users/sign_in', to: 'users/sessions#create', as: :my_user_session
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
