Rails.application.routes.draw do
  resources :movie_reviews
  get 'users/show'
  # get 'static_pages/home'
  root 'static_pages#home'
  devise_for :users
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
