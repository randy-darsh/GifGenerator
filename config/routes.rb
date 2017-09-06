Rails.application.routes.draw do
  resources :users, only: [:new, :show, :create]
  namespace :admin do
    resources :gifs, only: [:new, :create, :index]
  end
end
