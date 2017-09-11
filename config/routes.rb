Rails.application.routes.draw do
  resources :users, only: [:new, :show, :create]
  namespace :admin do
    resources :gifs, only: [:new, :create, :index]
    resources :categories, only: [:new, :create, :destory]
  end
  resources :categories, only: [:index, :show]
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'
end
