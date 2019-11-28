Rails.application.routes.draw do

  get '/', to: 'home#home'
  get '/search', to: 'search#search'
  get '/about', to: 'about#index'

  get '/login', to: 'login#index'
  get '/signup', to: 'signup#index'
  get '/onboarding', to: 'onboarding#index'

  get '/event/', to: 'event#home'
  get '/event/details', to: 'event#details'
 

  post '/signup', to: 'signup#create_user'
  post '/login', to: 'login#verify_account'
end
