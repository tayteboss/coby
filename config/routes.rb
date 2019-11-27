Rails.application.routes.draw do
  get '/home', to: 'home#home'
  get '/search', to: 'search#search'

  get '/login', to: 'login#index'
  get '/signup', to: 'signup#index'
  get '/event/details', to: 'event#details'
end
