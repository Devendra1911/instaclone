Rails.application.routes.draw do


devise_for :user do
   get "/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
   get "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
   get "/register", :to => "devise/registrations#new" # Add a Custom Route for Registrations
end

  # devise_scope :user do
  #   get '/users' to: 'devise/registrations#new'
  #   get '/users/password' to: 'devise/passwords#new'
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
   # devise_for :users
  # devise_for :users,  controllers: {
  #       sessions: 'users/sessions',
  #       passwords: 'users/passwords',
  #       registrations: 'users/registrations',
  #       confirmations: 'users/confirmations'    
  # }
  get 'home/about'
  get 'posts/myposts'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
end
