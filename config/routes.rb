Rails.application.routes.draw do

  get '/', to: 'home#home'
  
  get '/about', to: 'about#index'
  get '/onboarding', to: 'onboarding#index'
  get '/profile', to: 'profile#index'

  get '/events', to: 'events#index'
  get '/events/details', to: 'events#details'

  get '/login', to: 'session#index'
  post '/login', to: 'session#verify_account'
  get '/logout', to: 'session#logout'

  get '/signup', to: 'signup#index'
  post '/signup', to: 'signup#create_user'

end
