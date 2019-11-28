Rails.application.routes.draw do

  get '/', to: 'home#home'
  get '/search', to: 'search#search'
  get '/about', to: 'about#index'
  get '/onboarding', to: 'onboarding#index'
  get '/profile', to: 'profile#index'

  get '/event', to: 'event#home'
  get '/event/details', to: 'event#details'

  get '/login', to: 'session#index'
  post '/login', to: 'session#verify_account'
  get '/logout', to: 'session#logout'

  get '/signup', to: 'signup#index'
  post '/signup', to: 'signup#create_user'

end
