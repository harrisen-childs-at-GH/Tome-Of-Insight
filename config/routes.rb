Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/registrations' }
  unauthenticated :user do
    root to: 'sessions#login', as: :unauthenticated_root
  end

  authenticated :user do
    root to: 'campaigns#landing', as: :authenticated_root
  end

  get '/landing', to: 'campaigns#landing'

  devise_scope :user do
    get '/login', to: 'users/sessions#new', as: :my_new_user_session
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
