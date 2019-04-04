Rails.application.routes.draw do
  root 'staticpages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index', to: 'staticpages#index'
  get '/signup', to: 'users#new'
  resources :users
end
